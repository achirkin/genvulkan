{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE MagicHash       #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE Strict          #-}
{-# LANGUAGE ViewPatterns    #-}
module Graphics.Vulkan.Ext.VK_EXT_validation_features
       (-- * Vulkan extension: @VK_EXT_validation_features@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Karl Schultz @karl-lunarg@
        --
        -- author: @LUNARG@
        --
        -- type: @instance@
        --
        -- Extension number: @248@
        module Graphics.Vulkan.Marshal, VkApplicationInfo,
        AHardwareBuffer(), ANativeWindow(), CAMetalLayer(), VkBool32(..),
        VkDeviceAddress(..), VkDeviceSize(..), VkFlags(..),
        VkSampleMask(..), VkAndroidSurfaceCreateFlagsKHR(..),
        VkBufferViewCreateFlags(..),
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
        VkXlibSurfaceCreateFlagsKHR(..), VkInstanceCreateInfo,
        VkStructureType(..), VkValidationCacheHeaderVersionEXT(..),
        VkValidationCheckEXT(..), VkValidationFeatureDisableEXT(..),
        VkValidationFeatureEnableEXT(..), VkValidationFeaturesEXT,
        -- > #include "vk_platform.h"
        VK_EXT_VALIDATION_FEATURES_SPEC_VERSION,
        pattern VK_EXT_VALIDATION_FEATURES_SPEC_VERSION,
        VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME,
        pattern VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT)
       where
import GHC.Ptr                                         (Ptr (..))
import Graphics.Vulkan.Marshal
import Graphics.Vulkan.Types.BaseTypes
import Graphics.Vulkan.Types.Bitmasks
import Graphics.Vulkan.Types.Enum.StructureType
import Graphics.Vulkan.Types.Enum.Validation
import Graphics.Vulkan.Types.Struct.ApplicationInfo    (VkApplicationInfo)
import Graphics.Vulkan.Types.Struct.InstanceCreateInfo (VkInstanceCreateInfo)
import Graphics.Vulkan.Types.Struct.Validation         (VkValidationFeaturesEXT)

pattern VK_EXT_VALIDATION_FEATURES_SPEC_VERSION :: (Num a, Eq a) =>
        a

pattern VK_EXT_VALIDATION_FEATURES_SPEC_VERSION = 4

type VK_EXT_VALIDATION_FEATURES_SPEC_VERSION = 4

pattern VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME :: CString

pattern VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME <-
        (is_VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME -> True)
  where
    VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME
      = _VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME

{-# INLINE _VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME #-}

_VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME :: CString
_VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME
  = Ptr "VK_EXT_validation_features\NUL"#

{-# INLINE is_VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME #-}

is_VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME :: CString -> Bool
is_VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME
  = (EQ ==) . cmpCStrings _VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME

type VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME =
     "VK_EXT_validation_features"

pattern VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT =
        VkStructureType 1000247000
