{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE MagicHash       #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE Strict          #-}
{-# LANGUAGE ViewPatterns    #-}
module Graphics.Vulkan.Ext.VK_KHR_external_semaphore
       (-- * Vulkan extension: @VK_KHR_external_semaphore@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @James Jones @cubanismo@
        --
        -- author: @KHR@
        --
        -- type: @device@
        --
        -- Extension number: @78@
        --
        -- Required extensions: 'VK_KHR_external_semaphore_capabilities'.
        --

        -- ** Required extensions: 'VK_KHR_external_semaphore_capabilities'.
        module Graphics.Vulkan.Types.Struct.VkExportSemaphoreCreateInfoKHR,
        module Graphics.Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagsKHR,
        module Graphics.Vulkan.Types.BaseTypes,
        module Graphics.Vulkan.Types.Bitmasks,
        module Graphics.Vulkan.Types.Struct.VkSemaphoreCreateInfo,
        module Graphics.Vulkan.Types.Enum.VkSemaphoreImportFlagsKHR,
        module Graphics.Vulkan.Types.Enum.VkStructureType,
        -- > #include "vk_platform.h"
        VK_KHR_EXTERNAL_SEMAPHORE_SPEC_VERSION,
        pattern VK_KHR_EXTERNAL_SEMAPHORE_SPEC_VERSION,
        VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME,
        pattern VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO_KHR)
       where
import           GHC.Ptr
                                                                                   (Ptr (..))
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Types.BaseTypes
import           Graphics.Vulkan.Types.Bitmasks
import           Graphics.Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagsKHR
import           Graphics.Vulkan.Types.Enum.VkSemaphoreImportFlagsKHR
import           Graphics.Vulkan.Types.Enum.VkStructureType
import           Graphics.Vulkan.Types.Struct.VkExportSemaphoreCreateInfoKHR
import           Graphics.Vulkan.Types.Struct.VkSemaphoreCreateInfo

pattern VK_KHR_EXTERNAL_SEMAPHORE_SPEC_VERSION :: (Num a, Eq a) =>
        a

pattern VK_KHR_EXTERNAL_SEMAPHORE_SPEC_VERSION = 1

type VK_KHR_EXTERNAL_SEMAPHORE_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME :: CString

pattern VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME <-
        (is_VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME -> True)
  where VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME
          = _VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME

{-# INLINE _VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME #-}

_VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME :: CString
_VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME
  = Ptr "VK_KHR_external_semaphore\NUL"#

{-# INLINE is_VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME #-}

is_VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME :: CString -> Bool
is_VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME
  = (EQ ==) . cmpCStrings _VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME

type VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME =
     "VK_KHR_external_semaphore"

pattern VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO_KHR ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO_KHR =
        VkStructureType 1000077000
