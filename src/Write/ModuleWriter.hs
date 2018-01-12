{-# LANGUAGE DuplicateRecordFields      #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE Strict                     #-}
{-# LANGUAGE UndecidableInstances       #-}
module Write.ModuleWriter
  ( A, ModuleWriting (..), ModuleWriter (..)
  , runModuleWriter, genModule
  , writeImport, writeExport
  , writePragma, writeDecl
  , writeSection --, writeSectionPre
    -- * Helpers
  , appendComLine, parseDecl', setComment
  , writeWithComments, vkRegistryLink
  , writeSections
  , toHaskellType, toHaskellVar, qNameTxt
  , requireType, requireTypeMember, requireVar, requirePattern
  , toCamelCase
  ) where

import           Control.Applicative
import           Control.Monad
import           Control.Monad.Fail
import           Control.Monad.Fix
import           Control.Monad.IO.Class
import           Control.Monad.Reader.Class
import           Control.Monad.Trans.Class
import           Control.Monad.Morph
import           Control.Monad.Trans.RWS.Strict       (RWST (..), gets, modify)
import           Data.Char
import           Data.Coerce
import           Data.Foldable                        (toList)
import qualified Data.List                            as List
import           Data.Map.Strict                      (Map)
import qualified Data.Map.Strict                      as Map
import           Data.Semigroup
import           Data.Sequence                        (Seq)
import qualified Data.Sequence                        as Seq
import           Data.Set                             (Set)
import qualified Data.Set                             as Set
import           Data.Text                            (Text)
import qualified Data.Text                            as T
import           Data.Traversable                     (mapAccumL)
import           GHC.Stack                            (HasCallStack)
import           Language.Haskell.Exts.Extension
import           Language.Haskell.Exts.Parser
import           Language.Haskell.Exts.Pretty         (prettyPrint)
import           Language.Haskell.Exts.SimpleComments
import           Language.Haskell.Exts.Syntax

import           VkXml.CommonTypes
import           VkXml.Sections
import qualified VkXml.Sections.Feature               as Feature


type A = Maybe CodeComment


data ModuleWriting
  = ModuleWriting
  { mName         :: ModuleName ()
  , mImports      :: Map (ModuleName ()) (Set (ImportSpec ()))
  , mPragmas      :: Set String
  , mDecs         :: Seq (Decl A)
  , mExports      :: Seq (ExportSpec A)
  , pendingSec    :: Seq (Int, Text)
  , currentSecLvl :: Int
  }


newtype ModuleWriter m a
  = ModuleWriter
  { unModuleWriter :: RWST (VkXml ()) () ModuleWriting m a
  } deriving (Functor, Applicative, Monad, MonadFix, MonadFail, MonadIO
             , Alternative, MonadPlus, MonadReader (VkXml ())
             , MFunctor, MonadTrans)


runModuleWriter :: Functor m
                => VkXml ()
                -> String -- ^ module name
                -> ModuleWriter m a -> m (a, ModuleWriting)
runModuleWriter vkxml mname mw
    = f <$> runRWST (unModuleWriter mw) vkxml
                    (ModuleWriting (ModuleName () mname)
                                   mempty mempty mempty mempty mempty 1)
  where
    f (a,s,_) = (a, s)


genModule :: ModuleWriting -> Module A
genModule ModuleWriting {..}
    = Module Nothing
        (Just $ ModuleHead Nothing (Nothing <$ mName) Nothing (Just exports))
        pragmas imports decs
  where
    genPragma s = LanguagePragma Nothing [Ident Nothing s]
    genImport (m, specs)
      = simpleImport (Nothing <$ m) (fmap (const Nothing) <$> toList specs)
    pragmas = genPragma <$> toList mPragmas
    imports = genImport <$> Map.toList mImports
    decs = toList mDecs
    exports = ExportSpecList Nothing $ toList mExports




-- | Add a symbol to module imports
writeImport :: Monad m
            => String
            -> ImportSpec ()
            -> ModuleWriter m ()
writeImport mname is = ModuleWriter . modify $
    \mr -> mr {mImports = Map.alter f (ModuleName () mname) $ mImports mr}
  where
    f Nothing = Just $ Set.singleton is
    f (Just iss) = case mapAccumL check (Just is) $ toList iss of
        (Nothing, iss')  -> Just $ Set.fromList iss'
        (Just is', iss') -> Just $ Set.fromList (is':iss')
    check Nothing b                                   = (Nothing, b)
    check (Just a@IVar{}) b@IVar{} | a == b           = (Nothing, b)
    check (Just a@IAbs{}) b@IAbs{} | a == b           = (Nothing, b)
    check (Just a@IThingAll{}) b@IThingAll{} | a == b = (Nothing, b)
    check (Just (IThingWith _ an as)) (IThingWith _ bn bs)
      | an == bn
      = (Nothing, IThingWith () an $ List.union as bs)
    check (Just (IThingWith _ an _)) (IThingAll _ bn)
      | an == bn
      = (Nothing, IThingAll () bn)
    check ma b = (ma, b)

-- | Add a declaration to a module
writeDecl :: Monad m => Decl A -> ModuleWriter m ()
writeDecl d = ModuleWriter . modify $
  \mr -> mr {mDecs = mDecs mr Seq.|> d}

-- | Add a pragma to a module head
writePragma :: Monad m => String -> ModuleWriter m ()
writePragma pname = ModuleWriter . modify $
  \mr -> mr {mPragmas = Set.insert pname $ mPragmas mr}

-- | Add an export declaration to a module export list
writeExport :: Monad m => ExportSpec () -> ModuleWriter m ()
writeExport espec = ModuleWriter . modify $
   \mr -> mr { mExports = mExports mr Seq.|>
                          setComment (f $ pendingSec mr) (Nothing <$ espec)
             , pendingSec = mempty
             }
  where
    f txts = case unlines . g $ toList txts >>= normalize of
       "" -> Nothing
       s  -> Just $ CodeComment AboveCode ' ' s
    -- take a list of one-liners as arguments
    g [] = []
    g ((i, s):(0,t):xs) | i > 0 = (indent i ++ s):"|":t:g xs
    g ((i,s):xs) = (indent i ++ s) : g xs
    indent lvl = if lvl <= 0 then "" else reverse $ ' ' : replicate lvl '*'
    normalize (lvl, txt) = setlvls . lines . T.unpack $ T.strip txt
      where
        setlvls [] = []
        setlvls (x:xs) = (lvl, x) : map ((,) 0) xs


-- | Add a section split to a module export list
writeSection :: Monad m
             => Int    -- ^ Section level - number of star symbols
                       --   (zero for simple text)
             -> Text   -- ^ Section name
                       -- (And section content on further lines)
             -> ModuleWriter m ()
writeSection lvl txt = ModuleWriter . modify $
  \mr -> mr { pendingSec = pendingSec mr Seq.|> (lvl, txt)}
    -- | [] <- ss = pure ()
    -- | s1:srest <- ss
    -- , s <- (indent ++ s1) : srest
  -- where
  --   f Nothing  s = Just $ unlines $ barOnSecond lvl s
  --   f (Just t) s = Just . unlines $ barBefore lvl (lines t) s
  --   indent = if lvl <= 0 then "" else reverse $ ' ' : replicate lvl '*'
  --   ss = lines . T.unpack $ T.strip txt
  --   -- add a bar on a second line; only if it is not a normal text.
  --   barOnSecond 0 xs = xs
  --   barOnSecond _ [] = []
  --   barOnSecond _ [x] = [x]
  --   barOnSecond _ (x:y:zs) = x:"|":y:zs
  --   barBefore 0 t s | not (isBarHere False t) = t ++ "":"|":s
  --   barBefore _ t s = t ++ "":s
  --   isBarHere _ (('|':_):xs) = isBarHere True xs
  --   isBarHere _ (('*':_):xs) = isBarHere False xs
  --   isBarHere b (_:xs) = isBarHere b xs
  --   isBarHere b [] = b


-- | Write section elements interspersed with comments as section delimers.
--   Determine subsection level automatically.
writeSections :: Monad m
              => (a -> ModuleWriter m ())
              -> Sections a
              -> ModuleWriter m ()
writeSections f secs = do
    slvl <- ModuleWriter $ gets currentSecLvl
    let g = ModuleWriter . modify
          $ \mr -> mr { currentSecLvl = slvl + 1}
    writeWithComments slvl (\a -> g >> f a) secs

-- | Write section elements interspersed with comments as section delimers
writeWithComments :: Monad m
                  => Int
                  -> (a -> ModuleWriter m ())
                  -> Sections a
                  -> ModuleWriter m ()
writeWithComments slvl f Sections {..} = go 0 items comments
  where
    go _ [] cs = writeSection 0 . T.unlines $ map snd cs
    go i (a:as) [] = f a >> go i as []
    go i (a:as) (c@(j, txt):cs)
      | i >= j = writeSection slvl txt >> go i (a:as) cs
      | otherwise = f a >> go (i+1) as (c:cs)



simpleImport :: ModuleName A -> [ImportSpec A] -> ImportDecl A
simpleImport mname ispecs = ImportDecl
  { importAnn = Nothing
  , importModule = mname
  , importQualified = False
  , importSrc = False
  , importSafe = False
  , importPkg = Nothing
  , importAs = Nothing
  , importSpecs =
      Just (ImportSpecList Nothing False ispecs)
  }



appendComLine :: Maybe Text -> Text -> Maybe Text
appendComLine Nothing c = Just c
appendComLine (Just s) c
  | "" <- T.strip s = Just c
  | otherwise = Just $ T.stripEnd s <> "\n\n" <> c


parseDecl' :: HasCallStack => Text -> Decl A
parseDecl' t = case parseDeclWithMode vkParseMode (T.unpack t) of
  err@ParseFailed{} -> error $ show err
  ParseOk r         -> Nothing <$ r


setComment :: Annotated m
           => Maybe CodeComment
           -> m A -> m A
setComment mcc = amap (const mcc)



vkParseMode :: ParseMode
vkParseMode = defaultParseMode
      { baseLanguage = Haskell2010
      , extensions =
        [ EnableExtension GeneralizedNewtypeDeriving
        , EnableExtension PatternSynonyms
        , EnableExtension EmptyDataDecls
        , UnknownExtension "Strict"
        ]
      }

-- | Get a link to current definition in vulkan registry
vkRegistryLink :: Monad m
               => Text -- ^ name of the thing (part of the link)
                       --     e.g. type name.
               -> ModuleWriter m Text
vkRegistryLink tname = do
    vkXml <- ask
    pure $ "<https://www.khronos.org/registry/vulkan/specs/"
        <> Feature.number (unInorder $ globFeature vkXml)
        <> "/man/html/" <> tname <> ".html "
        <> tname <> " registry at www.khronos.org>"


qNameTxt :: QName a -> Text
qNameTxt (Qual _ _ (Ident _ t))  = T.pack t
qNameTxt (Qual _ _ (Symbol _ t)) = T.pack t
qNameTxt (UnQual _ (Ident _ t))  = T.pack t
qNameTxt (UnQual _ (Symbol _ t)) = T.pack t
qNameTxt (Special _ t)           = T.pack $ prettyPrint t

requireType :: Monad m => QName () -> ModuleWriter m ()
requireType (Qual _ (ModuleName _ m) n) = writeImport m (IThingWith () n [])
requireType _                           = pure ()


requireVar :: Monad m => QName () -> ModuleWriter m ()
requireVar (Qual _ (ModuleName _ m) n) = writeImport m (IVar () n)
requireVar _                           = pure ()

requireTypeMember :: Monad m => QName () -> CName () -> ModuleWriter m ()
requireTypeMember (Qual _ (ModuleName _ m) n) c
  = writeImport m (IThingWith () n [c])
requireTypeMember _ _ = pure ()

requirePattern :: Monad m => QName () -> ModuleWriter m ()
requirePattern (Qual _ (ModuleName _ m) n)
  = writeImport m (IAbs () (PatternNamespace ()) n)
requirePattern _ = pure ()

toHaskellType :: VkTypeName -> QName ()
toHaskellType (VkTypeName "void")
  = Special () (UnitCon ())
toHaskellType (VkTypeName "char")
  = Qual () (ModuleName () "Foreign.C.Types") (Ident () "CChar")
toHaskellType (VkTypeName "float")
  = Qual () (ModuleName () "Foreign.C.Types") (Ident () "CFloat")
toHaskellType (VkTypeName "double")
  = Qual () (ModuleName () "Foreign.C.Types") (Ident () "CDouble")
toHaskellType (VkTypeName "uint8_t")
  = Qual () (ModuleName () "Data.Word") (Ident () "Word8")
toHaskellType (VkTypeName "uint16_t")
  = Qual () (ModuleName () "Data.Word") (Ident () "Word16")
toHaskellType (VkTypeName "uint32_t")
  = Qual () (ModuleName () "Data.Word") (Ident () "Word32")
toHaskellType (VkTypeName "uint64_t")
  = Qual () (ModuleName () "Data.Word") (Ident () "Word64")
toHaskellType (VkTypeName "int8_t")
  = Qual () (ModuleName () "Data.Int") (Ident () "Int8")
toHaskellType (VkTypeName "int16_t")
  = Qual () (ModuleName () "Data.Int") (Ident () "Int16")
toHaskellType (VkTypeName "int32_t")
  = Qual () (ModuleName () "Data.Int") (Ident () "Int32")
toHaskellType (VkTypeName "int64_t")
  = Qual () (ModuleName () "Data.Int") (Ident () "Int64")
toHaskellType (VkTypeName "size_t")
  = Qual () (ModuleName () "Foreign.C.Types") (Ident () "CSize")
toHaskellType (VkTypeName "int")
  = Qual () (ModuleName () "Foreign.C.Types") (Ident () "CInt")
toHaskellType (VkTypeName t)
    = UnQual ()
    . Ident ()
    . toCamelCase
    . firstUp
    . dropWhile (not . isAlpha)
    . filter (\x -> isAlphaNum x || x == '_' || x == '\'')
    $ T.unpack t
  where
    firstUp []     = error "toHaskellType: empty type name!"
    firstUp (x:xs) = toUpper x : xs

toHaskellVar :: Coercible a Text
             => a -> QName ()
toHaskellVar
    = UnQual () . Ident ()
    . dropWhile (\x -> not (isAlpha x) && x /= '_')
    . filter (\x -> isAlphaNum x || x == '_' || x == '\'')
    . T.unpack . coerce


toCamelCase :: String -> String
toCamelCase ('_':c:cs)
  | isLower c = toUpper c : toCamelCase cs
toCamelCase (c:cs) = c : toCamelCase cs
toCamelCase [] = []