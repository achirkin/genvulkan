{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE MagicHash       #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE Strict          #-}
{-# LANGUAGE ViewPatterns    #-}
module Graphics.Vulkan.Ext.VK_NV_shader_image_footprint
       (-- * Vulkan extension: @VK_NV_shader_image_footprint@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Pat Brown @nvpbrown@
        --
        -- author: @NV@
        --
        -- type: @device@
        --
        -- Extension number: @205@
        --
        -- Required extensions: 'VK_KHR_get_physical_device_properties2'.
        --

        -- ** Required extensions: 'VK_KHR_get_physical_device_properties2'.
        module Graphics.Vulkan.Marshal, AHardwareBuffer(),
        ANativeWindow(), CAMetalLayer(), VkBool32(..), VkDeviceAddress(..),
        VkDeviceSize(..), VkFlags(..), VkSampleMask(..),
        VkAndroidSurfaceCreateFlagsKHR(..), VkBufferViewCreateFlags(..),
        VkBuildAccelerationStructureFlagsNV(..),
        VkCommandPoolTrimFlags(..), VkCommandPoolTrimFlagsKHR(..),
        VkDebugUtilsMessengerCallbackDataFlagsEXT(..),
        VkDebugUtilsMessengerCreateFlagsEXT(..),
        VkDescriptorBindingFlagsEXT(..), VkDescriptorPoolResetFlags(..),
        VkDescriptorUpdateTemplateCreateFlags(..),
        VkDescriptorUpdateTemplateCreateFlagsKHR(..),
        VkDeviceCreateFlags(..), VkDirectFBSurfaceCreateFlagsEXT(..),
        VkDisplayModeCreateFlagsKHR(..),
        VkDisplaySurfaceCreateFlagsKHR(..), VkEventCreateFlags(..),
        VkExternalFenceFeatureFlagsKHR(..),
        VkExternalFenceHandleTypeFlagsKHR(..),
        VkExternalMemoryFeatureFlagsKHR(..),
        VkExternalMemoryHandleTypeFlagsKHR(..),
        VkExternalSemaphoreFeatureFlagsKHR(..),
        VkExternalSemaphoreHandleTypeFlagsKHR(..),
        VkFenceImportFlagsKHR(..), VkGeometryFlagsNV(..),
        VkGeometryInstanceFlagsNV(..), VkHeadlessSurfaceCreateFlagsEXT(..),
        VkIOSSurfaceCreateFlagsMVK(..),
        VkImagePipeSurfaceCreateFlagsFUCHSIA(..),
        VkInstanceCreateFlags(..), VkMacOSSurfaceCreateFlagsMVK(..),
        VkMemoryAllocateFlagsKHR(..), VkMemoryMapFlags(..),
        VkMetalSurfaceCreateFlagsEXT(..), VkPeerMemoryFeatureFlagsKHR(..),
        VkPipelineColorBlendStateCreateFlags(..),
        VkPipelineCoverageModulationStateCreateFlagsNV(..),
        VkPipelineCoverageReductionStateCreateFlagsNV(..),
        VkPipelineCoverageToColorStateCreateFlagsNV(..),
        VkPipelineDepthStencilStateCreateFlags(..),
        VkPipelineDiscardRectangleStateCreateFlagsEXT(..),
        VkPipelineDynamicStateCreateFlags(..),
        VkPipelineInputAssemblyStateCreateFlags(..),
        VkPipelineLayoutCreateFlags(..),
        VkPipelineMultisampleStateCreateFlags(..),
        VkPipelineRasterizationConservativeStateCreateFlagsEXT(..),
        VkPipelineRasterizationDepthClipStateCreateFlagsEXT(..),
        VkPipelineRasterizationStateCreateFlags(..),
        VkPipelineRasterizationStateStreamCreateFlagsEXT(..),
        VkPipelineTessellationStateCreateFlags(..),
        VkPipelineVertexInputStateCreateFlags(..),
        VkPipelineViewportStateCreateFlags(..),
        VkPipelineViewportSwizzleStateCreateFlagsNV(..),
        VkQueryPoolCreateFlags(..), VkResolveModeFlagsKHR(..),
        VkSemaphoreCreateFlags(..), VkSemaphoreImportFlagsKHR(..),
        VkSemaphoreWaitFlagsKHR(..),
        VkStreamDescriptorSurfaceCreateFlagsGGP(..),
        VkValidationCacheCreateFlagsEXT(..), VkViSurfaceCreateFlagsNN(..),
        VkWaylandSurfaceCreateFlagsKHR(..),
        VkWin32SurfaceCreateFlagsKHR(..), VkXcbSurfaceCreateFlagsKHR(..),
        VkXlibSurfaceCreateFlagsKHR(..), VkDeviceCreateInfo,
        VkDeviceDiagnosticsConfigBitmaskNV(..), VkDeviceEventTypeEXT(..),
        VkDeviceGroupPresentModeBitmaskKHR(..), VkDeviceCreateFlagBits(..),
        VkDeviceDiagnosticsConfigFlagBitsNV(),
        VkDeviceDiagnosticsConfigFlagsNV(),
        VkDeviceGroupPresentModeFlagBitsKHR(),
        VkDeviceGroupPresentModeFlagsKHR(), VkDeviceQueueCreateBitmask(..),
        VkDeviceQueueCreateFlagBits(), VkDeviceQueueCreateFlags(),
        VkDeviceQueueCreateInfo, VkPhysicalDeviceFeatures,
        VkPhysicalDeviceFeatures2,
        VkPhysicalDeviceShaderImageFootprintFeaturesNV,
        VkStructureType(..), -- > #include "vk_platform.h"
                             VK_NV_SHADER_IMAGE_FOOTPRINT_SPEC_VERSION,
        pattern VK_NV_SHADER_IMAGE_FOOTPRINT_SPEC_VERSION,
        VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME,
        pattern VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV)
       where
import GHC.Ptr                                             (Ptr (..))
import Graphics.Vulkan.Marshal
import Graphics.Vulkan.Types.BaseTypes
import Graphics.Vulkan.Types.Bitmasks
import Graphics.Vulkan.Types.Enum.Device
import Graphics.Vulkan.Types.Enum.StructureType
import Graphics.Vulkan.Types.Struct.Device                 (VkDeviceCreateInfo, VkDeviceQueueCreateInfo)
import Graphics.Vulkan.Types.Struct.PhysicalDevice         (VkPhysicalDeviceFeatures2,
                                                            VkPhysicalDeviceShaderImageFootprintFeaturesNV)
import Graphics.Vulkan.Types.Struct.PhysicalDeviceFeatures (VkPhysicalDeviceFeatures)

pattern VK_NV_SHADER_IMAGE_FOOTPRINT_SPEC_VERSION ::
        (Num a, Eq a) => a

pattern VK_NV_SHADER_IMAGE_FOOTPRINT_SPEC_VERSION = 2

type VK_NV_SHADER_IMAGE_FOOTPRINT_SPEC_VERSION = 2

pattern VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME :: CString

pattern VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME <-
        (is_VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME -> True)
  where
    VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME
      = _VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME

{-# INLINE _VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME #-}

_VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME :: CString
_VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME
  = Ptr "VK_NV_shader_image_footprint\NUL"#

{-# INLINE is_VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME #-}

is_VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME :: CString -> Bool
is_VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME
  = (EQ ==) .
      cmpCStrings _VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME

type VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME =
     "VK_NV_shader_image_footprint"

pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV
        = VkStructureType 1000204000
