#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE MagicHash       #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE Strict          #-}
{-# LANGUAGE ViewPatterns    #-}
module Graphics.Vulkan.Ext.VK_QCOM_extension_174
       (-- * Vulkan extension: @VK_QCOM_extension_174@
        -- |
        --
        -- supported: @disabled@
        --
        -- contact: @Bill Licea-Kane @billl@
        --
        -- author: @QCOM@
        --
        -- Extension number: @174@
        VK_QCOM_extension_174_SPEC_VERSION,
        pattern VK_QCOM_extension_174_SPEC_VERSION,
        VK_QCOM_extension_174_EXTENSION_NAME,
        pattern VK_QCOM_extension_174_EXTENSION_NAME)
       where
import           Data.Int
import           Data.Word
import           Foreign.C.String                 (CString)
import           GHC.Ptr                          (Ptr (..))
import           Graphics.Vulkan.Base
import           Graphics.Vulkan.Common
import           Graphics.Vulkan.Core
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Internal
import           Graphics.Vulkan.StructMembers

pattern VK_QCOM_extension_174_SPEC_VERSION :: (Num a, Eq a) => a

pattern VK_QCOM_extension_174_SPEC_VERSION = 0

type VK_QCOM_extension_174_SPEC_VERSION = 0

pattern VK_QCOM_extension_174_EXTENSION_NAME :: CString

pattern VK_QCOM_extension_174_EXTENSION_NAME <-
        (is_VK_QCOM_extension_174_EXTENSION_NAME -> True)
  where VK_QCOM_extension_174_EXTENSION_NAME
          = _VK_QCOM_extension_174_EXTENSION_NAME

_VK_QCOM_extension_174_EXTENSION_NAME :: CString

{-# INLINE _VK_QCOM_extension_174_EXTENSION_NAME #-}
_VK_QCOM_extension_174_EXTENSION_NAME
  = Ptr "VK_QCOM_extension_174\NUL"##

is_VK_QCOM_extension_174_EXTENSION_NAME :: CString -> Bool

{-# INLINE is_VK_QCOM_extension_174_EXTENSION_NAME #-}
is_VK_QCOM_extension_174_EXTENSION_NAME
  = (_VK_QCOM_extension_174_EXTENSION_NAME ==)

type VK_QCOM_extension_174_EXTENSION_NAME = "VK_QCOM_extension_174"
