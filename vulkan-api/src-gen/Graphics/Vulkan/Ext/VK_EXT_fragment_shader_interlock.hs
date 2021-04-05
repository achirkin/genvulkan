{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE MagicHash       #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE Strict          #-}
{-# LANGUAGE ViewPatterns    #-}
module Graphics.Vulkan.Ext.VK_EXT_fragment_shader_interlock
       (-- * Vulkan extension: @VK_EXT_fragment_shader_interlock@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Piers Daniell @pdaniell-nv@
        --
        -- author: @EXT@
        --
        -- type: @device@
        --
        -- Extension number: @252@
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
        VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT,
        VkStructureType(..), -- > #include "vk_platform.h"
                             VK_EXT_FRAGMENT_SHADER_INTERLOCK_SPEC_VERSION,
        pattern VK_EXT_FRAGMENT_SHADER_INTERLOCK_SPEC_VERSION,
        VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME,
        pattern VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT)
       where
import GHC.Ptr                                             (Ptr (..))
import Graphics.Vulkan.Marshal
import Graphics.Vulkan.Types.BaseTypes
import Graphics.Vulkan.Types.Bitmasks
import Graphics.Vulkan.Types.Enum.Device
import Graphics.Vulkan.Types.Enum.StructureType
import Graphics.Vulkan.Types.Struct.Device                 (VkDeviceCreateInfo, VkDeviceQueueCreateInfo)
import Graphics.Vulkan.Types.Struct.PhysicalDevice         (VkPhysicalDeviceFeatures2,
                                                            VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT)
import Graphics.Vulkan.Types.Struct.PhysicalDeviceFeatures (VkPhysicalDeviceFeatures)

pattern VK_EXT_FRAGMENT_SHADER_INTERLOCK_SPEC_VERSION ::
        (Num a, Eq a) => a

pattern VK_EXT_FRAGMENT_SHADER_INTERLOCK_SPEC_VERSION = 1

type VK_EXT_FRAGMENT_SHADER_INTERLOCK_SPEC_VERSION = 1

pattern VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME :: CString

pattern VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME <-
        (is_VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME -> True)
  where
    VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME
      = _VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME

{-# INLINE _VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME #-}

_VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME :: CString
_VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME
  = Ptr "VK_EXT_fragment_shader_interlock\NUL"#

{-# INLINE is_VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME #-}

is_VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME ::
                                                   CString -> Bool
is_VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME
  = (EQ ==) .
      cmpCStrings _VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME

type VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME =
     "VK_EXT_fragment_shader_interlock"

pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT
        = VkStructureType 1000251000
