{-# OPTIONS_HADDOCK ignore-exports#-}
{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE KindSignatures             #-}
{-# LANGUAGE PatternSynonyms            #-}
{-# LANGUAGE StandaloneDeriving         #-}
{-# LANGUAGE Strict                     #-}
{-# LANGUAGE TypeSynonymInstances       #-}
module Graphics.Vulkan.Types.Enum.Fence
       (VkFenceCreateBitmask(VkFenceCreateBitmask, VkFenceCreateFlags,
                             VkFenceCreateFlagBits, VK_FENCE_CREATE_SIGNALED_BIT),
        VkFenceCreateFlags, VkFenceCreateFlagBits,
        VkFenceImportFlagBitsKHR(..),
        VkFenceImportBitmask(VkFenceImportBitmask, VkFenceImportFlags,
                             VkFenceImportFlagBits, VK_FENCE_IMPORT_TEMPORARY_BIT),
        VkFenceImportFlags, VkFenceImportFlagBits)
       where
import Data.Bits                       (Bits, FiniteBits)
import Data.Coerce                     (coerce)
import Foreign.Storable                (Storable)
import GHC.Read                        (choose, expectP)
import Graphics.Vulkan.Marshal         (FlagBit, FlagMask, FlagType)
import Graphics.Vulkan.Types.BaseTypes (VkFlags (..))
import Text.ParserCombinators.ReadPrec (prec, step, (+++))
import Text.Read                       (Read (..), parens)
import Text.Read.Lex                   (Lexeme (..))

newtype VkFenceCreateBitmask (a ::
                                FlagType) = VkFenceCreateBitmask VkFlags
                                            deriving (Eq, Ord, Storable)

type VkFenceCreateFlags = VkFenceCreateBitmask FlagMask

type VkFenceCreateFlagBits = VkFenceCreateBitmask FlagBit

pattern VkFenceCreateFlagBits ::
        VkFlags -> VkFenceCreateBitmask FlagBit

pattern VkFenceCreateFlagBits n = VkFenceCreateBitmask n

pattern VkFenceCreateFlags ::
        VkFlags -> VkFenceCreateBitmask FlagMask

pattern VkFenceCreateFlags n = VkFenceCreateBitmask n

deriving instance Bits (VkFenceCreateBitmask FlagMask)

deriving instance FiniteBits (VkFenceCreateBitmask FlagMask)

instance Show (VkFenceCreateBitmask a) where
    showsPrec _ VK_FENCE_CREATE_SIGNALED_BIT
      = showString "VK_FENCE_CREATE_SIGNALED_BIT"
    showsPrec p (VkFenceCreateBitmask x)
      = showParen (p >= 11)
          (showString "VkFenceCreateBitmask " . showsPrec 11 x)

instance Read (VkFenceCreateBitmask a) where
    readPrec
      = parens
          (choose
             [("VK_FENCE_CREATE_SIGNALED_BIT",
               pure VK_FENCE_CREATE_SIGNALED_BIT)]
             +++
             prec 10
               (expectP (Ident "VkFenceCreateBitmask") >>
                  (VkFenceCreateBitmask <$> step readPrec)))

-- | bitpos = @0@
pattern VK_FENCE_CREATE_SIGNALED_BIT :: VkFenceCreateBitmask a

pattern VK_FENCE_CREATE_SIGNALED_BIT = VkFenceCreateBitmask 1

newtype VkFenceImportFlagBitsKHR = VkFenceImportFlagBitsKHR VkFlags
                                   deriving (Eq, Ord, Enum, Bits, FiniteBits, Storable)

instance Show VkFenceImportFlagBitsKHR where
    {-# INLINE showsPrec #-}
    showsPrec = coerce (showsPrec :: Int -> VkFlags -> ShowS)

instance Read VkFenceImportFlagBitsKHR where
    {-# INLINE readsPrec #-}
    readsPrec = coerce (readsPrec :: Int -> ReadS VkFlags)

newtype VkFenceImportBitmask (a ::
                                FlagType) = VkFenceImportBitmask VkFlags
                                            deriving (Eq, Ord, Storable)

type VkFenceImportFlags = VkFenceImportBitmask FlagMask

type VkFenceImportFlagBits = VkFenceImportBitmask FlagBit

pattern VkFenceImportFlagBits ::
        VkFlags -> VkFenceImportBitmask FlagBit

pattern VkFenceImportFlagBits n = VkFenceImportBitmask n

pattern VkFenceImportFlags ::
        VkFlags -> VkFenceImportBitmask FlagMask

pattern VkFenceImportFlags n = VkFenceImportBitmask n

deriving instance Bits (VkFenceImportBitmask FlagMask)

deriving instance FiniteBits (VkFenceImportBitmask FlagMask)

instance Show (VkFenceImportBitmask a) where
    showsPrec _ VK_FENCE_IMPORT_TEMPORARY_BIT
      = showString "VK_FENCE_IMPORT_TEMPORARY_BIT"
    showsPrec p (VkFenceImportBitmask x)
      = showParen (p >= 11)
          (showString "VkFenceImportBitmask " . showsPrec 11 x)

instance Read (VkFenceImportBitmask a) where
    readPrec
      = parens
          (choose
             [("VK_FENCE_IMPORT_TEMPORARY_BIT",
               pure VK_FENCE_IMPORT_TEMPORARY_BIT)]
             +++
             prec 10
               (expectP (Ident "VkFenceImportBitmask") >>
                  (VkFenceImportBitmask <$> step readPrec)))

-- | bitpos = @0@
pattern VK_FENCE_IMPORT_TEMPORARY_BIT :: VkFenceImportBitmask a

pattern VK_FENCE_IMPORT_TEMPORARY_BIT = VkFenceImportBitmask 1
