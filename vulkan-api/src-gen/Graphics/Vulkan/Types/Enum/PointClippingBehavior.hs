{-# OPTIONS_HADDOCK ignore-exports#-}
{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE PatternSynonyms            #-}
{-# LANGUAGE Strict                     #-}
module Graphics.Vulkan.Types.Enum.PointClippingBehavior
       (VkPointClippingBehavior(VkPointClippingBehavior,
                                VK_POINT_CLIPPING_BEHAVIOR_ALL_CLIP_PLANES,
                                VK_POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY),
        VkPointClippingBehaviorKHR(..))
       where
import Data.Bits                       (Bits, FiniteBits)
import Data.Coerce                     (coerce)
import Foreign.Storable                (Storable)
import GHC.Read                        (choose, expectP)
import Graphics.Vulkan.Marshal         (Int32)
import Graphics.Vulkan.Types.BaseTypes (VkFlags)
import Text.ParserCombinators.ReadPrec (prec, step, (+++))
import Text.Read                       (Read (..), parens)
import Text.Read.Lex                   (Lexeme (..))

-- | type = @enum@
--
--   <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VkPointClippingBehavior VkPointClippingBehavior registry at www.khronos.org>
newtype VkPointClippingBehavior = VkPointClippingBehavior Int32
                                  deriving (Eq, Ord, Enum, Storable)

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

newtype VkPointClippingBehaviorKHR = VkPointClippingBehaviorKHR VkFlags
                                     deriving (Eq, Ord, Enum, Bits, FiniteBits, Storable)

instance Show VkPointClippingBehaviorKHR where
    {-# INLINE showsPrec #-}
    showsPrec = coerce (showsPrec :: Int -> VkFlags -> ShowS)

instance Read VkPointClippingBehaviorKHR where
    {-# INLINE readsPrec #-}
    readsPrec = coerce (readsPrec :: Int -> ReadS VkFlags)
