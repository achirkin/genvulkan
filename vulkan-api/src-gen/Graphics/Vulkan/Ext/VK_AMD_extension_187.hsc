#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE MagicHash       #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE Strict          #-}
{-# LANGUAGE ViewPatterns    #-}
module Graphics.Vulkan.Ext.VK_AMD_extension_187
       (-- * Vulkan extension: @VK_AMD_extension_187@
        -- |
        --
        -- supported: @disabled@
        --
        -- contact: @Daniel Rakos @aqnuep@
        --
        -- author: @AMD@
        --
        -- Extension number: @187@
        VK_KHR_EXTENSION_187_SPEC_VERSION,
        pattern VK_KHR_EXTENSION_187_SPEC_VERSION,
        VK_KHR_EXTENSION_187_EXTENSION_NAME,
        pattern VK_KHR_EXTENSION_187_EXTENSION_NAME)
       where
import           Foreign.C.String              (CString)
import           GHC.Ptr                       (Ptr (..))
import           Graphics.Vulkan.StructMembers

pattern VK_KHR_EXTENSION_187_SPEC_VERSION :: (Num a, Eq a) => a

pattern VK_KHR_EXTENSION_187_SPEC_VERSION = 0

type VK_KHR_EXTENSION_187_SPEC_VERSION = 0

pattern VK_KHR_EXTENSION_187_EXTENSION_NAME :: CString

pattern VK_KHR_EXTENSION_187_EXTENSION_NAME <-
        (is_VK_KHR_EXTENSION_187_EXTENSION_NAME -> True)
  where VK_KHR_EXTENSION_187_EXTENSION_NAME
          = _VK_KHR_EXTENSION_187_EXTENSION_NAME

_VK_KHR_EXTENSION_187_EXTENSION_NAME :: CString

{-# INLINE _VK_KHR_EXTENSION_187_EXTENSION_NAME #-}
_VK_KHR_EXTENSION_187_EXTENSION_NAME
  = Ptr "VK_AMD_extension_187\NUL"##

is_VK_KHR_EXTENSION_187_EXTENSION_NAME :: CString -> Bool

{-# INLINE is_VK_KHR_EXTENSION_187_EXTENSION_NAME #-}
is_VK_KHR_EXTENSION_187_EXTENSION_NAME
  = (_VK_KHR_EXTENSION_187_EXTENSION_NAME ==)

type VK_KHR_EXTENSION_187_EXTENSION_NAME = "VK_AMD_extension_187"
