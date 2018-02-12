#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE MagicHash       #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE Strict          #-}
{-# LANGUAGE ViewPatterns    #-}
module Graphics.Vulkan.Ext.VK_KHR_extension_117
       (-- * Vulkan extension: @VK_KHR_extension_117@
        -- |
        --
        -- supported: @disabled@
        --
        -- contact: @Kenneth Benzie @kbenzie@
        --
        -- author: @KHR@
        --
        -- Extension number: @117@
        VK_KHR_EXTENSION_117_SPEC_VERSION,
        pattern VK_KHR_EXTENSION_117_SPEC_VERSION,
        VK_KHR_EXTENSION_117_EXTENSION_NAME,
        pattern VK_KHR_EXTENSION_117_EXTENSION_NAME)
       where
import           Foreign.C.String        (CString)
import           GHC.Ptr                 (Ptr (..))
import           Graphics.Vulkan.Marshal

pattern VK_KHR_EXTENSION_117_SPEC_VERSION :: (Num a, Eq a) => a

pattern VK_KHR_EXTENSION_117_SPEC_VERSION = 0

type VK_KHR_EXTENSION_117_SPEC_VERSION = 0

pattern VK_KHR_EXTENSION_117_EXTENSION_NAME :: CString

pattern VK_KHR_EXTENSION_117_EXTENSION_NAME <-
        (is_VK_KHR_EXTENSION_117_EXTENSION_NAME -> True)
  where VK_KHR_EXTENSION_117_EXTENSION_NAME
          = _VK_KHR_EXTENSION_117_EXTENSION_NAME

{-# INLINE _VK_KHR_EXTENSION_117_EXTENSION_NAME #-}

_VK_KHR_EXTENSION_117_EXTENSION_NAME :: CString
_VK_KHR_EXTENSION_117_EXTENSION_NAME
  = Ptr "VK_KHR_extension_117\NUL"##

{-# INLINE is_VK_KHR_EXTENSION_117_EXTENSION_NAME #-}

is_VK_KHR_EXTENSION_117_EXTENSION_NAME :: CString -> Bool
is_VK_KHR_EXTENSION_117_EXTENSION_NAME
  = eqCStrings _VK_KHR_EXTENSION_117_EXTENSION_NAME

type VK_KHR_EXTENSION_117_EXTENSION_NAME = "VK_KHR_extension_117"
