{-# OPTIONS_HADDOCK ignore-exports#-}
{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE PatternSynonyms            #-}
{-# LANGUAGE Strict                     #-}
module Graphics.Vulkan.Types.Enum.VkPointClippingBehavior
       (VkPointClippingBehavior(VkPointClippingBehavior,
                                VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES,
                                VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY))
       where
import           Data.Data                       (Data)
import           Foreign.Storable                (Storable)
import           GHC.Generics                    (Generic)
import           GHC.Read                        (choose, expectP)
import           Graphics.Vulkan.Marshal         (Int32)
import           Text.ParserCombinators.ReadPrec (prec, step, (+++))
import           Text.Read                       (Read (..), parens)
import           Text.Read.Lex                   (Lexeme (..))

-- | type = @enum@
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/VkPointClippingBehavior.html VkPointClippingBehavior registry at www.khronos.org>
newtype VkPointClippingBehavior = VkPointClippingBehavior Int32
                                    deriving (Eq, Ord, Num, Bounded, Storable, Enum, Data, Generic)

instance Show VkPointClippingBehavior where
        showsPrec _ VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES
          = showString "VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES"
        showsPrec _ VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY
          = showString "VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY"
        showsPrec p (VkPointClippingBehavior x)
          = showParen (p >= 11)
              (showString "VkPointClippingBehavior " . showsPrec 11 x)

instance Read VkPointClippingBehavior where
        readPrec
          = parens
              (choose
                 [("VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES",
                   pure VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES),
                  ("VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY",
                   pure VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY)]
                 +++
                 prec 10
                   (expectP (Ident "VkPointClippingBehavior") >>
                      (VkPointClippingBehavior <$> step readPrec)))

pattern VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES ::
        VkPointClippingBehavior

pattern VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES =
        VkPointClippingBehavior 0

pattern VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY ::
        VkPointClippingBehavior

pattern VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY =
        VkPointClippingBehavior 1
