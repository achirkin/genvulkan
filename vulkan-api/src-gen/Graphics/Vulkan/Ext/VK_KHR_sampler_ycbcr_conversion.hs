{-# OPTIONS_GHC -fno-warn-missing-pattern-synonym-signatures#-}
{-# OPTIONS_GHC -fno-warn-orphans#-}
{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE CPP                      #-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE MagicHash                #-}
{-# LANGUAGE PatternSynonyms          #-}
{-# LANGUAGE Strict                   #-}
{-# LANGUAGE TypeFamilies             #-}
{-# LANGUAGE ViewPatterns             #-}
module Graphics.Vulkan.Ext.VK_KHR_sampler_ycbcr_conversion
       (-- * Vulkan extension: @VK_KHR_sampler_ycbcr_conversion@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Andrew Garrard @fluppeteer@
        --
        -- author: @KHR@
        --
        -- type: @device@
        --
        -- Extension number: @157@
        --
        -- Required extensions: 'VK_KHR_maintenance1', 'VK_KHR_bind_memory2', 'VK_KHR_get_memory_requirements2', 'VK_KHR_get_physical_device_properties2'.
        --

        -- ** Required extensions: 'VK_KHR_maintenance1', 'VK_KHR_bind_memory2', 'VK_KHR_get_memory_requirements2', 'VK_KHR_get_physical_device_properties2'.
        VkBindImagePlaneMemoryInfoKHR, VkChromaLocation(..),
        VkChromaLocationKHR(..), VkImagePlaneMemoryRequirementsInfoKHR,
        VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR,
        VkSamplerYcbcrConversionCreateInfoKHR,
        VkSamplerYcbcrConversionImageFormatPropertiesKHR,
        VkSamplerYcbcrConversionInfoKHR, VkSamplerAddressMode(..),
        VkSamplerMipmapMode(..), VkSamplerReductionMode(..),
        VkSamplerYcbcrModelConversion(..), VkSamplerYcbcrRange(..),
        VkSamplerCreateBitmask(..), VkSamplerCreateFlagBits(),
        VkSamplerCreateFlags(), VkSamplerReductionModeEXT(..),
        VkSamplerYcbcrModelConversionKHR(..), VkSamplerYcbcrRangeKHR(..),
        VkCreateSamplerYcbcrConversionKHR,
        pattern VkCreateSamplerYcbcrConversionKHR,
        HS_vkCreateSamplerYcbcrConversionKHR,
        PFN_vkCreateSamplerYcbcrConversionKHR,
        VkDestroySamplerYcbcrConversionKHR,
        pattern VkDestroySamplerYcbcrConversionKHR,
        HS_vkDestroySamplerYcbcrConversionKHR,
        PFN_vkDestroySamplerYcbcrConversionKHR,
        module Graphics.Vulkan.Marshal, AHardwareBuffer(), ANativeWindow(),
        CAMetalLayer(), VkBool32(..), VkDeviceAddress(..),
        VkDeviceSize(..), VkFlags(..), VkSampleMask(..),
        VkComponentSwizzle(..), VkComponentTypeNV(..), VkFilter(..),
        VkFormat(..), VkFormatFeatureBitmask(..),
        VkFormatFeatureFlagBits(), VkFormatFeatureFlags(),
        VkInternalAllocationType(..), VkResult(..), VkStructureType(..),
        VkSystemAllocationScope(..), newVkAllocationFunction,
        newVkDebugReportCallbackEXT, newVkDebugUtilsMessengerCallbackEXT,
        newVkFreeFunction, newVkInternalAllocationNotification,
        newVkInternalFreeNotification, newVkReallocationFunction,
        newVkVoidFunction, unwrapVkAllocationFunction,
        unwrapVkDebugReportCallbackEXT,
        unwrapVkDebugUtilsMessengerCallbackEXT, unwrapVkFreeFunction,
        unwrapVkInternalAllocationNotification,
        unwrapVkInternalFreeNotification, unwrapVkReallocationFunction,
        unwrapVkVoidFunction, HS_vkAllocationFunction,
        HS_vkDebugReportCallbackEXT, HS_vkDebugUtilsMessengerCallbackEXT,
        HS_vkFreeFunction, HS_vkInternalAllocationNotification,
        HS_vkInternalFreeNotification, HS_vkReallocationFunction,
        HS_vkVoidFunction, PFN_vkAllocationFunction,
        PFN_vkDebugReportCallbackEXT, PFN_vkDebugUtilsMessengerCallbackEXT,
        PFN_vkFreeFunction, PFN_vkInternalAllocationNotification,
        PFN_vkInternalFreeNotification, PFN_vkReallocationFunction,
        PFN_vkVoidFunction, VkAccelerationStructureKHR,
        VkAccelerationStructureKHR_T(), VkAccelerationStructureNV,
        VkAccelerationStructureNV_T(), VkBuffer, VkBufferView,
        VkBufferView_T(), VkBuffer_T(), VkCommandBuffer,
        VkCommandBuffer_T(), VkCommandPool, VkCommandPool_T(),
        VkDebugReportCallbackEXT, VkDebugReportCallbackEXT_T(),
        VkDebugUtilsMessengerEXT, VkDebugUtilsMessengerEXT_T(),
        VkDeferredOperationKHR, VkDeferredOperationKHR_T(),
        VkDescriptorPool, VkDescriptorPool_T(), VkDescriptorSet,
        VkDescriptorSetLayout, VkDescriptorSetLayout_T(),
        VkDescriptorSet_T(), VkDescriptorUpdateTemplate,
        VkDescriptorUpdateTemplateKHR, VkDescriptorUpdateTemplateKHR_T(),
        VkDescriptorUpdateTemplate_T(), VkDevice, VkDeviceMemory,
        VkDeviceMemory_T(), VkDevice_T(), VkDisplayKHR, VkDisplayKHR_T(),
        VkDisplayModeKHR, VkDisplayModeKHR_T(), VkEvent, VkEvent_T(),
        VkFence, VkFence_T(), VkFramebuffer, VkFramebuffer_T(), VkImage,
        VkImageView, VkImageView_T(), VkImage_T(),
        VkIndirectCommandsLayoutNV, VkIndirectCommandsLayoutNV_T(),
        VkInstance, VkInstance_T(), VkPerformanceConfigurationINTEL,
        VkPerformanceConfigurationINTEL_T(), VkPhysicalDevice,
        VkPhysicalDevice_T(), VkPipeline, VkPipelineCache,
        VkPipelineCache_T(), VkPipelineLayout, VkPipelineLayout_T(),
        VkPipeline_T(), VkPrivateDataSlotEXT, VkPrivateDataSlotEXT_T(),
        VkQueryPool, VkQueryPool_T(), VkQueue, VkQueue_T(), VkRenderPass,
        VkRenderPass_T(), VkSampler, VkSamplerYcbcrConversion,
        VkSamplerYcbcrConversionKHR, VkSamplerYcbcrConversionKHR_T(),
        VkSamplerYcbcrConversion_T(), VkSampler_T(), VkSemaphore,
        VkSemaphore_T(), VkShaderModule, VkShaderModule_T(), VkSurfaceKHR,
        VkSurfaceKHR_T(), VkSwapchainKHR, VkSwapchainKHR_T(),
        VkValidationCacheEXT, VkValidationCacheEXT_T(),
        VkAllocationCallbacks, VkComponentMapping, VkSamplerCreateInfo,
        VkSamplerCustomBorderColorCreateInfoEXT,
        VkSamplerReductionModeCreateInfo,
        VkSamplerReductionModeCreateInfoEXT,
        VkSamplerYcbcrConversionCreateInfo,
        VkSamplerYcbcrConversionImageFormatProperties,
        VkSamplerYcbcrConversionInfo,
        VK_KHR_SAMPLER_YCBCR_CONVERSION_SPEC_VERSION,
        pattern VK_KHR_SAMPLER_YCBCR_CONVERSION_SPEC_VERSION,
        VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME,
        pattern VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO_KHR,
        pattern VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO_KHR,
        pattern VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO_KHR,
        pattern VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO_KHR,
        pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES_KHR,
        pattern VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES_KHR,
        pattern VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR_EXT,
        pattern VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR,
        pattern VK_FORMAT_G8B8G8R8_422_UNORM_KHR,
        pattern VK_FORMAT_B8G8R8G8_422_UNORM_KHR,
        pattern VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM_KHR,
        pattern VK_FORMAT_G8_B8R8_2PLANE_420_UNORM_KHR,
        pattern VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM_KHR,
        pattern VK_FORMAT_G8_B8R8_2PLANE_422_UNORM_KHR,
        pattern VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM_KHR,
        pattern VK_FORMAT_R10X6_UNORM_PACK16_KHR,
        pattern VK_FORMAT_R10X6G10X6_UNORM_2PACK16_KHR,
        pattern VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16_KHR,
        pattern VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16_KHR,
        pattern VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16_KHR,
        pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16_KHR,
        pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16_KHR,
        pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16_KHR,
        pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16_KHR,
        pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16_KHR,
        pattern VK_FORMAT_R12X4_UNORM_PACK16_KHR,
        pattern VK_FORMAT_R12X4G12X4_UNORM_2PACK16_KHR,
        pattern VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16_KHR,
        pattern VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16_KHR,
        pattern VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16_KHR,
        pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16_KHR,
        pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16_KHR,
        pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16_KHR,
        pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16_KHR,
        pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16_KHR,
        pattern VK_FORMAT_G16B16G16R16_422_UNORM_KHR,
        pattern VK_FORMAT_B16G16R16G16_422_UNORM_KHR,
        pattern VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM_KHR,
        pattern VK_FORMAT_G16_B16R16_2PLANE_420_UNORM_KHR,
        pattern VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM_KHR,
        pattern VK_FORMAT_G16_B16R16_2PLANE_422_UNORM_KHR,
        pattern VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM_KHR,
        pattern VK_IMAGE_ASPECT_PLANE_0_BIT_KHR,
        pattern VK_IMAGE_ASPECT_PLANE_1_BIT_KHR,
        pattern VK_IMAGE_ASPECT_PLANE_2_BIT_KHR,
        pattern VK_IMAGE_CREATE_DISJOINT_BIT_KHR,
        pattern VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT_KHR,
        pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR,
        pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR,
        pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR,
        pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR,
        pattern VK_FORMAT_FEATURE_DISJOINT_BIT_KHR,
        pattern VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT_KHR,
        pattern VK_SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY_KHR,
        pattern VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY_KHR,
        pattern VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709_KHR,
        pattern VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601_KHR,
        pattern VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020_KHR,
        pattern VK_SAMPLER_YCBCR_RANGE_ITU_FULL_KHR,
        pattern VK_SAMPLER_YCBCR_RANGE_ITU_NARROW_KHR,
        pattern VK_CHROMA_LOCATION_COSITED_EVEN_KHR,
        pattern VK_CHROMA_LOCATION_MIDPOINT_KHR,
        -- ** Required extensions: 'VK_EXT_debug_report', 'VK_KHR_maintenance1', 'VK_KHR_bind_memory2', 'VK_KHR_get_memory_requirements2', 'VK_KHR_get_physical_device_properties2'.
        pattern VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT)
       where
import GHC.Ptr                                           (Ptr (..))
import Graphics.Vulkan.Core_1_1                          (pattern VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16,
                                                          pattern VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16,
                                                          pattern VK_FORMAT_B16G16R16G16_422_UNORM,
                                                          pattern VK_FORMAT_B8G8R8G8_422_UNORM,
                                                          pattern VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT,
                                                          pattern VK_FORMAT_FEATURE_DISJOINT_BIT,
                                                          pattern VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT,
                                                          pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT,
                                                          pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT,
                                                          pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT,
                                                          pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT,
                                                          pattern VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16,
                                                          pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16,
                                                          pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16,
                                                          pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16,
                                                          pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16,
                                                          pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16,
                                                          pattern VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16,
                                                          pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16,
                                                          pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16,
                                                          pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16,
                                                          pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16,
                                                          pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16,
                                                          pattern VK_FORMAT_G16B16G16R16_422_UNORM,
                                                          pattern VK_FORMAT_G16_B16R16_2PLANE_420_UNORM,
                                                          pattern VK_FORMAT_G16_B16R16_2PLANE_422_UNORM,
                                                          pattern VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM,
                                                          pattern VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM,
                                                          pattern VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM,
                                                          pattern VK_FORMAT_G8B8G8R8_422_UNORM,
                                                          pattern VK_FORMAT_G8_B8R8_2PLANE_420_UNORM,
                                                          pattern VK_FORMAT_G8_B8R8_2PLANE_422_UNORM,
                                                          pattern VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM,
                                                          pattern VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM,
                                                          pattern VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM,
                                                          pattern VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16,
                                                          pattern VK_FORMAT_R10X6G10X6_UNORM_2PACK16,
                                                          pattern VK_FORMAT_R10X6_UNORM_PACK16,
                                                          pattern VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16,
                                                          pattern VK_FORMAT_R12X4G12X4_UNORM_2PACK16,
                                                          pattern VK_FORMAT_R12X4_UNORM_PACK16,
                                                          pattern VK_IMAGE_ASPECT_PLANE_0_BIT,
                                                          pattern VK_IMAGE_ASPECT_PLANE_1_BIT,
                                                          pattern VK_IMAGE_ASPECT_PLANE_2_BIT,
                                                          pattern VK_IMAGE_CREATE_DISJOINT_BIT,
                                                          pattern VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION,
                                                          pattern VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO,
                                                          pattern VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO,
                                                          pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES,
                                                          pattern VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO,
                                                          pattern VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES,
                                                          pattern VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO)
import Graphics.Vulkan.Ext.VK_EXT_debug_report           (pattern VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT)
import Graphics.Vulkan.Marshal
import Graphics.Vulkan.Marshal.Proc                      (VulkanProc (..))
import Graphics.Vulkan.Types.BaseTypes
import Graphics.Vulkan.Types.Enum.ChromaLocation
import Graphics.Vulkan.Types.Enum.Component
import Graphics.Vulkan.Types.Enum.Filter
import Graphics.Vulkan.Types.Enum.Format
import Graphics.Vulkan.Types.Enum.InternalAllocationType
import Graphics.Vulkan.Types.Enum.Result
import Graphics.Vulkan.Types.Enum.Sampler
import Graphics.Vulkan.Types.Enum.StructureType
import Graphics.Vulkan.Types.Enum.SystemAllocationScope
import Graphics.Vulkan.Types.Funcpointers
import Graphics.Vulkan.Types.Handles
import Graphics.Vulkan.Types.Struct.AllocationCallbacks
import Graphics.Vulkan.Types.Struct.Bind                 (VkBindImagePlaneMemoryInfoKHR)
import Graphics.Vulkan.Types.Struct.ComponentMapping
import Graphics.Vulkan.Types.Struct.Image                (VkImagePlaneMemoryRequirementsInfoKHR)
import Graphics.Vulkan.Types.Struct.PhysicalDevice       (VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR)
import Graphics.Vulkan.Types.Struct.Sampler

pattern VkCreateSamplerYcbcrConversionKHR :: CString

pattern VkCreateSamplerYcbcrConversionKHR <-
        (is_VkCreateSamplerYcbcrConversionKHR -> True)
  where
    VkCreateSamplerYcbcrConversionKHR
      = _VkCreateSamplerYcbcrConversionKHR

{-# INLINE _VkCreateSamplerYcbcrConversionKHR #-}

_VkCreateSamplerYcbcrConversionKHR :: CString
_VkCreateSamplerYcbcrConversionKHR
  = Ptr "vkCreateSamplerYcbcrConversionKHR\NUL"#

{-# INLINE is_VkCreateSamplerYcbcrConversionKHR #-}

is_VkCreateSamplerYcbcrConversionKHR :: CString -> Bool
is_VkCreateSamplerYcbcrConversionKHR
  = (EQ ==) . cmpCStrings _VkCreateSamplerYcbcrConversionKHR

type VkCreateSamplerYcbcrConversionKHR =
     "vkCreateSamplerYcbcrConversionKHR"

-- | This is an alias for `vkCreateSamplerYcbcrConversion`.
--
--   Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkCreateSamplerYcbcrConversionKHR
--   >     ( VkDevice device
--   >     , const VkSamplerYcbcrConversionCreateInfo* pCreateInfo
--   >     , const VkAllocationCallbacks* pAllocator
--   >     , VkSamplerYcbcrConversion* pYcbcrConversion
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#vkCreateSamplerYcbcrConversionKHR vkCreateSamplerYcbcrConversionKHR registry at www.khronos.org>
type HS_vkCreateSamplerYcbcrConversionKHR =
     VkDevice -- ^ device
              ->
       Ptr VkSamplerYcbcrConversionCreateInfo -- ^ pCreateInfo
                                              ->
         Ptr VkAllocationCallbacks -- ^ pAllocator
                                   ->
           Ptr VkSamplerYcbcrConversion -- ^ pYcbcrConversion
                                        -> IO VkResult

type PFN_vkCreateSamplerYcbcrConversionKHR =
     FunPtr HS_vkCreateSamplerYcbcrConversionKHR

foreign import ccall unsafe "dynamic"
               unwrapVkCreateSamplerYcbcrConversionKHRUnsafe ::
               PFN_vkCreateSamplerYcbcrConversionKHR ->
                 HS_vkCreateSamplerYcbcrConversionKHR

foreign import ccall safe "dynamic"
               unwrapVkCreateSamplerYcbcrConversionKHRSafe ::
               PFN_vkCreateSamplerYcbcrConversionKHR ->
                 HS_vkCreateSamplerYcbcrConversionKHR

instance VulkanProc "vkCreateSamplerYcbcrConversionKHR" where
    type VkProcType "vkCreateSamplerYcbcrConversionKHR" =
         HS_vkCreateSamplerYcbcrConversionKHR
    vkProcSymbol = _VkCreateSamplerYcbcrConversionKHR

    {-# INLINE vkProcSymbol #-}
    unwrapVkProcPtrUnsafe
      = unwrapVkCreateSamplerYcbcrConversionKHRUnsafe

    {-# INLINE unwrapVkProcPtrUnsafe #-}
    unwrapVkProcPtrSafe = unwrapVkCreateSamplerYcbcrConversionKHRSafe

    {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkDestroySamplerYcbcrConversionKHR :: CString

pattern VkDestroySamplerYcbcrConversionKHR <-
        (is_VkDestroySamplerYcbcrConversionKHR -> True)
  where
    VkDestroySamplerYcbcrConversionKHR
      = _VkDestroySamplerYcbcrConversionKHR

{-# INLINE _VkDestroySamplerYcbcrConversionKHR #-}

_VkDestroySamplerYcbcrConversionKHR :: CString
_VkDestroySamplerYcbcrConversionKHR
  = Ptr "vkDestroySamplerYcbcrConversionKHR\NUL"#

{-# INLINE is_VkDestroySamplerYcbcrConversionKHR #-}

is_VkDestroySamplerYcbcrConversionKHR :: CString -> Bool
is_VkDestroySamplerYcbcrConversionKHR
  = (EQ ==) . cmpCStrings _VkDestroySamplerYcbcrConversionKHR

type VkDestroySamplerYcbcrConversionKHR =
     "vkDestroySamplerYcbcrConversionKHR"

-- | This is an alias for `vkDestroySamplerYcbcrConversion`.
--
--   > void vkDestroySamplerYcbcrConversionKHR
--   >     ( VkDevice device
--   >     , VkSamplerYcbcrConversion ycbcrConversion
--   >     , const VkAllocationCallbacks* pAllocator
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#vkDestroySamplerYcbcrConversionKHR vkDestroySamplerYcbcrConversionKHR registry at www.khronos.org>
type HS_vkDestroySamplerYcbcrConversionKHR =
     VkDevice -- ^ device
              ->
       VkSamplerYcbcrConversion -- ^ ycbcrConversion
                                -> Ptr VkAllocationCallbacks -- ^ pAllocator
                                                             -> IO ()

type PFN_vkDestroySamplerYcbcrConversionKHR =
     FunPtr HS_vkDestroySamplerYcbcrConversionKHR

foreign import ccall unsafe "dynamic"
               unwrapVkDestroySamplerYcbcrConversionKHRUnsafe ::
               PFN_vkDestroySamplerYcbcrConversionKHR ->
                 HS_vkDestroySamplerYcbcrConversionKHR

foreign import ccall safe "dynamic"
               unwrapVkDestroySamplerYcbcrConversionKHRSafe ::
               PFN_vkDestroySamplerYcbcrConversionKHR ->
                 HS_vkDestroySamplerYcbcrConversionKHR

instance VulkanProc "vkDestroySamplerYcbcrConversionKHR" where
    type VkProcType "vkDestroySamplerYcbcrConversionKHR" =
         HS_vkDestroySamplerYcbcrConversionKHR
    vkProcSymbol = _VkDestroySamplerYcbcrConversionKHR

    {-# INLINE vkProcSymbol #-}
    unwrapVkProcPtrUnsafe
      = unwrapVkDestroySamplerYcbcrConversionKHRUnsafe

    {-# INLINE unwrapVkProcPtrUnsafe #-}
    unwrapVkProcPtrSafe = unwrapVkDestroySamplerYcbcrConversionKHRSafe

    {-# INLINE unwrapVkProcPtrSafe #-}

pattern VK_KHR_SAMPLER_YCBCR_CONVERSION_SPEC_VERSION ::
        (Num a, Eq a) => a

pattern VK_KHR_SAMPLER_YCBCR_CONVERSION_SPEC_VERSION = 14

type VK_KHR_SAMPLER_YCBCR_CONVERSION_SPEC_VERSION = 14

pattern VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME :: CString

pattern VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME <-
        (is_VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME -> True)
  where
    VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME
      = _VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME

{-# INLINE _VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME #-}

_VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME :: CString
_VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME
  = Ptr "VK_KHR_sampler_ycbcr_conversion\NUL"#

{-# INLINE is_VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME #-}

is_VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME ::
                                                  CString -> Bool
is_VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME
  = (EQ ==) .
      cmpCStrings _VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME

type VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME =
     "VK_KHR_sampler_ycbcr_conversion"

pattern VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO_KHR
        = VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_CREATE_INFO

pattern VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO_KHR =
        VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_INFO

pattern VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO_KHR =
        VK_STRUCTURE_TYPE_BIND_IMAGE_PLANE_MEMORY_INFO

pattern VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO_KHR
        = VK_STRUCTURE_TYPE_IMAGE_PLANE_MEMORY_REQUIREMENTS_INFO

pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES_KHR
        =
        VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_YCBCR_CONVERSION_FEATURES

pattern VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES_KHR
        =
        VK_STRUCTURE_TYPE_SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES

pattern VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR_EXT
        = VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT

pattern VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR =
        VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION

pattern VK_FORMAT_G8B8G8R8_422_UNORM_KHR =
        VK_FORMAT_G8B8G8R8_422_UNORM

pattern VK_FORMAT_B8G8R8G8_422_UNORM_KHR =
        VK_FORMAT_B8G8R8G8_422_UNORM

pattern VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM_KHR =
        VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM

pattern VK_FORMAT_G8_B8R8_2PLANE_420_UNORM_KHR =
        VK_FORMAT_G8_B8R8_2PLANE_420_UNORM

pattern VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM_KHR =
        VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM

pattern VK_FORMAT_G8_B8R8_2PLANE_422_UNORM_KHR =
        VK_FORMAT_G8_B8R8_2PLANE_422_UNORM

pattern VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM_KHR =
        VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM

pattern VK_FORMAT_R10X6_UNORM_PACK16_KHR =
        VK_FORMAT_R10X6_UNORM_PACK16

pattern VK_FORMAT_R10X6G10X6_UNORM_2PACK16_KHR =
        VK_FORMAT_R10X6G10X6_UNORM_2PACK16

pattern VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16_KHR =
        VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16

pattern VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16_KHR =
        VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16

pattern VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16_KHR =
        VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16

pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16_KHR =
        VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16

pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16_KHR =
        VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16

pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16_KHR =
        VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16

pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16_KHR =
        VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16

pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16_KHR =
        VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16

pattern VK_FORMAT_R12X4_UNORM_PACK16_KHR =
        VK_FORMAT_R12X4_UNORM_PACK16

pattern VK_FORMAT_R12X4G12X4_UNORM_2PACK16_KHR =
        VK_FORMAT_R12X4G12X4_UNORM_2PACK16

pattern VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16_KHR =
        VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16

pattern VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16_KHR =
        VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16

pattern VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16_KHR =
        VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16

pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16_KHR =
        VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16

pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16_KHR =
        VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16

pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16_KHR =
        VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16

pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16_KHR =
        VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16

pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16_KHR =
        VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16

pattern VK_FORMAT_G16B16G16R16_422_UNORM_KHR =
        VK_FORMAT_G16B16G16R16_422_UNORM

pattern VK_FORMAT_B16G16R16G16_422_UNORM_KHR =
        VK_FORMAT_B16G16R16G16_422_UNORM

pattern VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM_KHR =
        VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM

pattern VK_FORMAT_G16_B16R16_2PLANE_420_UNORM_KHR =
        VK_FORMAT_G16_B16R16_2PLANE_420_UNORM

pattern VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM_KHR =
        VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM

pattern VK_FORMAT_G16_B16R16_2PLANE_422_UNORM_KHR =
        VK_FORMAT_G16_B16R16_2PLANE_422_UNORM

pattern VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM_KHR =
        VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM

pattern VK_IMAGE_ASPECT_PLANE_0_BIT_KHR =
        VK_IMAGE_ASPECT_PLANE_0_BIT

pattern VK_IMAGE_ASPECT_PLANE_1_BIT_KHR =
        VK_IMAGE_ASPECT_PLANE_1_BIT

pattern VK_IMAGE_ASPECT_PLANE_2_BIT_KHR =
        VK_IMAGE_ASPECT_PLANE_2_BIT

pattern VK_IMAGE_CREATE_DISJOINT_BIT_KHR =
        VK_IMAGE_CREATE_DISJOINT_BIT

pattern VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT_KHR =
        VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT

pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR
        =
        VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT

pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR
        =
        VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT

pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR
        =
        VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT

pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR
        =
        VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT

pattern VK_FORMAT_FEATURE_DISJOINT_BIT_KHR =
        VK_FORMAT_FEATURE_DISJOINT_BIT

pattern VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT_KHR =
        VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT

pattern VK_SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY_KHR =
        VK_SAMPLER_YCBCR_MODEL_CONVERSION_RGB_IDENTITY

pattern VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY_KHR =
        VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_IDENTITY

pattern VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709_KHR =
        VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_709

pattern VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601_KHR =
        VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_601

pattern VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020_KHR =
        VK_SAMPLER_YCBCR_MODEL_CONVERSION_YCBCR_2020

pattern VK_SAMPLER_YCBCR_RANGE_ITU_FULL_KHR =
        VK_SAMPLER_YCBCR_RANGE_ITU_FULL

pattern VK_SAMPLER_YCBCR_RANGE_ITU_NARROW_KHR =
        VK_SAMPLER_YCBCR_RANGE_ITU_NARROW

pattern VK_CHROMA_LOCATION_COSITED_EVEN_KHR =
        VK_CHROMA_LOCATION_COSITED_EVEN

pattern VK_CHROMA_LOCATION_MIDPOINT_KHR =
        VK_CHROMA_LOCATION_MIDPOINT
