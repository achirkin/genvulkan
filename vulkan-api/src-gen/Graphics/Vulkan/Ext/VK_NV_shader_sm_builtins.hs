{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE MagicHash       #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE Strict          #-}
{-# LANGUAGE ViewPatterns    #-}
module Graphics.Vulkan.Ext.VK_NV_shader_sm_builtins
       (-- * Vulkan extension: @VK_NV_shader_sm_builtins@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Daniel Koch @dgkoch@
        --
        -- author: @NV@
        --
        -- type: @device@
        --
        -- Extension number: @155@
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
        VkPhysicalDeviceFeatures2, VkPhysicalDeviceLimits,
        VkPhysicalDeviceProperties, VkPhysicalDeviceProperties2,
        VkPhysicalDeviceShaderSMBuiltinsFeaturesNV,
        VkPhysicalDeviceShaderSMBuiltinsPropertiesNV,
        VkPhysicalDeviceSparseProperties, VkPhysicalDeviceType(..),
        VkSampleCountBitmask(..), VkSampleCountFlagBits(),
        VkSampleCountFlags(), VkStructureType(..),
        -- > #include "vk_platform.h"
        VK_NV_SHADER_SM_BUILTINS_SPEC_VERSION,
        pattern VK_NV_SHADER_SM_BUILTINS_SPEC_VERSION,
        VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME,
        pattern VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV,
        pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV)
       where
import GHC.Ptr                                             (Ptr (..))
import Graphics.Vulkan.Marshal
import Graphics.Vulkan.Types.BaseTypes
import Graphics.Vulkan.Types.Bitmasks
import Graphics.Vulkan.Types.Enum.Device
import Graphics.Vulkan.Types.Enum.PhysicalDeviceType
import Graphics.Vulkan.Types.Enum.SampleCountFlags
import Graphics.Vulkan.Types.Enum.StructureType
import Graphics.Vulkan.Types.Struct.Device                 (VkDeviceCreateInfo, VkDeviceQueueCreateInfo)
import Graphics.Vulkan.Types.Struct.PhysicalDevice         (VkPhysicalDeviceFeatures2,
                                                            VkPhysicalDeviceLimits,
                                                            VkPhysicalDeviceProperties,
                                                            VkPhysicalDeviceProperties2,
                                                            VkPhysicalDeviceShaderSMBuiltinsFeaturesNV,
                                                            VkPhysicalDeviceShaderSMBuiltinsPropertiesNV,
                                                            VkPhysicalDeviceSparseProperties)
import Graphics.Vulkan.Types.Struct.PhysicalDeviceFeatures (VkPhysicalDeviceFeatures)

pattern VK_NV_SHADER_SM_BUILTINS_SPEC_VERSION :: (Num a, Eq a) => a

pattern VK_NV_SHADER_SM_BUILTINS_SPEC_VERSION = 1

type VK_NV_SHADER_SM_BUILTINS_SPEC_VERSION = 1

pattern VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME :: CString

pattern VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME <-
        (is_VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME -> True)
  where
    VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME
      = _VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME

{-# INLINE _VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME #-}

_VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME :: CString
_VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME
  = Ptr "VK_NV_shader_sm_builtins\NUL"#

{-# INLINE is_VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME #-}

is_VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME :: CString -> Bool
is_VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME
  = (EQ ==) . cmpCStrings _VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME

type VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME =
     "VK_NV_shader_sm_builtins"

pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_FEATURES_NV
        = VkStructureType 1000154000

pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_SM_BUILTINS_PROPERTIES_NV
        = VkStructureType 1000154001
