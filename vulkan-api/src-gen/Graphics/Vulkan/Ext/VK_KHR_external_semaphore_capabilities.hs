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
module Graphics.Vulkan.Ext.VK_KHR_external_semaphore_capabilities
       (-- * Vulkan extension: @VK_KHR_external_semaphore_capabilities@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @James Jones @cubanismo@
        --
        -- author: @KHR@
        --
        -- type: @instance@
        --
        -- Extension number: @77@
        --
        -- Required extensions: 'VK_KHR_get_physical_device_properties2'.
        --

        -- ** Required extensions: 'VK_KHR_get_physical_device_properties2'.
        VkExternalFenceFeatureBitmask(..),
        VkExternalFenceHandleTypeBitmask(..),
        VkExternalMemoryFeatureBitmask(..),
        VkExternalMemoryFeatureBitmaskNV(..),
        VkExternalMemoryHandleTypeBitmaskNV(..),
        VkExternalMemoryHandleTypeBitmask(..),
        VkExternalSemaphoreFeatureBitmask(..),
        VkExternalSemaphoreHandleTypeBitmask(..),
        VkExternalFenceFeatureFlagBits(),
        VkExternalFenceFeatureFlagBitsKHR(..),
        VkExternalFenceFeatureFlags(), VkExternalFenceHandleTypeFlagBits(),
        VkExternalFenceHandleTypeFlagBitsKHR(..),
        VkExternalFenceHandleTypeFlags(),
        VkExternalMemoryFeatureFlagBits(),
        VkExternalMemoryFeatureFlagBitsKHR(..),
        VkExternalMemoryFeatureFlagBitsNV(),
        VkExternalMemoryFeatureFlags(), VkExternalMemoryFeatureFlagsNV(),
        VkExternalMemoryHandleTypeFlagBits(),
        VkExternalMemoryHandleTypeFlagBitsKHR(..),
        VkExternalMemoryHandleTypeFlagBitsNV(),
        VkExternalMemoryHandleTypeFlags(),
        VkExternalMemoryHandleTypeFlagsNV(),
        VkExternalSemaphoreFeatureFlagBits(),
        VkExternalSemaphoreFeatureFlagBitsKHR(..),
        VkExternalSemaphoreFeatureFlags(),
        VkExternalSemaphoreHandleTypeFlagBits(),
        VkExternalSemaphoreHandleTypeFlagBitsKHR(..),
        VkExternalSemaphoreHandleTypeFlags(),
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
        VkXlibSurfaceCreateFlagsKHR(..), VkExternalSemaphorePropertiesKHR,
        VkPhysicalDeviceExternalSemaphoreInfoKHR,
        VkPhysicalDeviceIDPropertiesKHR,
        VkGetPhysicalDeviceExternalSemaphorePropertiesKHR,
        pattern VkGetPhysicalDeviceExternalSemaphorePropertiesKHR,
        HS_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR,
        PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR,
        module Graphics.Vulkan.Marshal, AHardwareBuffer(), ANativeWindow(),
        CAMetalLayer(), VkBool32(..), VkDeviceAddress(..),
        VkDeviceSize(..), VkFlags(..), VkSampleMask(..),
        VkStructureType(..), VkAccelerationStructureKHR,
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
        VkExternalBufferProperties, VkExternalBufferPropertiesKHR,
        VkExternalFenceProperties, VkExternalFencePropertiesKHR,
        VkExternalImageFormatProperties,
        VkExternalImageFormatPropertiesKHR,
        VkExternalImageFormatPropertiesNV,
        VkExternalMemoryBufferCreateInfo,
        VkExternalMemoryBufferCreateInfoKHR,
        VkExternalMemoryImageCreateInfo,
        VkExternalMemoryImageCreateInfoKHR,
        VkExternalMemoryImageCreateInfoNV, VkExternalMemoryProperties,
        VkExternalMemoryPropertiesKHR, VkExternalSemaphoreProperties,
        VkPhysicalDevice16BitStorageFeatures,
        VkPhysicalDevice16BitStorageFeaturesKHR,
        VkPhysicalDevice4444FormatsFeaturesEXT,
        VkPhysicalDevice8BitStorageFeatures,
        VkPhysicalDevice8BitStorageFeaturesKHR,
        VkPhysicalDeviceASTCDecodeFeaturesEXT,
        VkPhysicalDeviceBlendOperationAdvancedFeaturesEXT,
        VkPhysicalDeviceBlendOperationAdvancedPropertiesEXT,
        VkPhysicalDeviceBufferAddressFeaturesEXT,
        VkPhysicalDeviceBufferDeviceAddressFeatures,
        VkPhysicalDeviceBufferDeviceAddressFeaturesEXT,
        VkPhysicalDeviceBufferDeviceAddressFeaturesKHR,
        VkPhysicalDeviceCoherentMemoryFeaturesAMD,
        VkPhysicalDeviceComputeShaderDerivativesFeaturesNV,
        VkPhysicalDeviceConditionalRenderingFeaturesEXT,
        VkPhysicalDeviceConservativeRasterizationPropertiesEXT,
        VkPhysicalDeviceCooperativeMatrixFeaturesNV,
        VkPhysicalDeviceCooperativeMatrixPropertiesNV,
        VkPhysicalDeviceCornerSampledImageFeaturesNV,
        VkPhysicalDeviceCoverageReductionModeFeaturesNV,
        VkPhysicalDeviceCustomBorderColorFeaturesEXT,
        VkPhysicalDeviceCustomBorderColorPropertiesEXT,
        VkPhysicalDeviceDedicatedAllocationImageAliasingFeaturesNV,
        VkPhysicalDeviceDepthClipEnableFeaturesEXT,
        VkPhysicalDeviceDepthStencilResolveProperties,
        VkPhysicalDeviceDepthStencilResolvePropertiesKHR,
        VkPhysicalDeviceDescriptorIndexingFeatures,
        VkPhysicalDeviceDescriptorIndexingFeaturesEXT,
        VkPhysicalDeviceDescriptorIndexingProperties,
        VkPhysicalDeviceDescriptorIndexingPropertiesEXT,
        VkPhysicalDeviceDeviceGeneratedCommandsFeaturesNV,
        VkPhysicalDeviceDeviceGeneratedCommandsPropertiesNV,
        VkPhysicalDeviceDiagnosticsConfigFeaturesNV,
        VkPhysicalDeviceDiscardRectanglePropertiesEXT,
        VkPhysicalDeviceDriverProperties,
        VkPhysicalDeviceDriverPropertiesKHR,
        VkPhysicalDeviceExclusiveScissorFeaturesNV,
        VkPhysicalDeviceExtendedDynamicStateFeaturesEXT,
        VkPhysicalDeviceExternalBufferInfo,
        VkPhysicalDeviceExternalBufferInfoKHR,
        VkPhysicalDeviceExternalFenceInfo,
        VkPhysicalDeviceExternalFenceInfoKHR,
        VkPhysicalDeviceExternalImageFormatInfo,
        VkPhysicalDeviceExternalImageFormatInfoKHR,
        VkPhysicalDeviceExternalMemoryHostPropertiesEXT,
        VkPhysicalDeviceExternalSemaphoreInfo, VkPhysicalDeviceFeatures2,
        VkPhysicalDeviceFeatures2KHR,
        VkPhysicalDeviceFloat16Int8FeaturesKHR,
        VkPhysicalDeviceFloatControlsProperties,
        VkPhysicalDeviceFloatControlsPropertiesKHR,
        VkPhysicalDeviceFragmentDensityMap2FeaturesEXT,
        VkPhysicalDeviceFragmentDensityMap2PropertiesEXT,
        VkPhysicalDeviceFragmentDensityMapFeaturesEXT,
        VkPhysicalDeviceFragmentDensityMapPropertiesEXT,
        VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV,
        VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT,
        VkPhysicalDeviceGroupProperties,
        VkPhysicalDeviceGroupPropertiesKHR,
        VkPhysicalDeviceHostQueryResetFeatures,
        VkPhysicalDeviceHostQueryResetFeaturesEXT,
        VkPhysicalDeviceIDProperties,
        VkPhysicalDeviceImageDrmFormatModifierInfoEXT,
        VkPhysicalDeviceImageFormatInfo2,
        VkPhysicalDeviceImageFormatInfo2KHR,
        VkPhysicalDeviceImageRobustnessFeaturesEXT,
        VkPhysicalDeviceImageViewImageFormatInfoEXT,
        VkPhysicalDeviceImagelessFramebufferFeatures,
        VkPhysicalDeviceImagelessFramebufferFeaturesKHR,
        VkPhysicalDeviceIndexTypeUint8FeaturesEXT,
        VkPhysicalDeviceInlineUniformBlockFeaturesEXT,
        VkPhysicalDeviceInlineUniformBlockPropertiesEXT,
        VkPhysicalDeviceLimits,
        VkPhysicalDeviceLineRasterizationFeaturesEXT,
        VkPhysicalDeviceLineRasterizationPropertiesEXT,
        VkPhysicalDeviceMaintenance3Properties,
        VkPhysicalDeviceMaintenance3PropertiesKHR,
        VkPhysicalDeviceMemoryBudgetPropertiesEXT,
        VkPhysicalDeviceMemoryPriorityFeaturesEXT,
        VkPhysicalDeviceMemoryProperties,
        VkPhysicalDeviceMemoryProperties2,
        VkPhysicalDeviceMemoryProperties2KHR,
        VkPhysicalDeviceMeshShaderFeaturesNV,
        VkPhysicalDeviceMeshShaderPropertiesNV,
        VkPhysicalDeviceMultiviewFeatures,
        VkPhysicalDeviceMultiviewFeaturesKHR,
        VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX,
        VkPhysicalDeviceMultiviewProperties,
        VkPhysicalDeviceMultiviewPropertiesKHR,
        VkPhysicalDevicePCIBusInfoPropertiesEXT,
        VkPhysicalDevicePerformanceQueryFeaturesKHR,
        VkPhysicalDevicePerformanceQueryPropertiesKHR,
        VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT,
        VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR,
        VkPhysicalDevicePointClippingProperties,
        VkPhysicalDevicePointClippingPropertiesKHR,
        VkPhysicalDevicePrivateDataFeaturesEXT, VkPhysicalDeviceProperties,
        VkPhysicalDeviceProperties2, VkPhysicalDeviceProperties2KHR,
        VkPhysicalDeviceProtectedMemoryFeatures,
        VkPhysicalDeviceProtectedMemoryProperties,
        VkPhysicalDevicePushDescriptorPropertiesKHR,
        VkPhysicalDeviceRayTracingPropertiesNV,
        VkPhysicalDeviceRepresentativeFragmentTestFeaturesNV,
        VkPhysicalDeviceRobustness2FeaturesEXT,
        VkPhysicalDeviceRobustness2PropertiesEXT,
        VkPhysicalDeviceSampleLocationsPropertiesEXT,
        VkPhysicalDeviceSamplerFilterMinmaxProperties,
        VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT,
        VkPhysicalDeviceSamplerYcbcrConversionFeatures,
        VkPhysicalDeviceSamplerYcbcrConversionFeaturesKHR,
        VkPhysicalDeviceScalarBlockLayoutFeatures,
        VkPhysicalDeviceScalarBlockLayoutFeaturesEXT,
        VkPhysicalDeviceSeparateDepthStencilLayoutsFeatures,
        VkPhysicalDeviceSeparateDepthStencilLayoutsFeaturesKHR,
        VkPhysicalDeviceShaderAtomicFloatFeaturesEXT,
        VkPhysicalDeviceShaderAtomicInt64Features,
        VkPhysicalDeviceShaderAtomicInt64FeaturesKHR,
        VkPhysicalDeviceShaderClockFeaturesKHR,
        VkPhysicalDeviceShaderCoreProperties2AMD,
        VkPhysicalDeviceShaderCorePropertiesAMD,
        VkPhysicalDeviceShaderDemoteToHelperInvocationFeaturesEXT,
        VkPhysicalDeviceShaderDrawParameterFeatures,
        VkPhysicalDeviceShaderDrawParametersFeatures,
        VkPhysicalDeviceShaderFloat16Int8Features,
        VkPhysicalDeviceShaderFloat16Int8FeaturesKHR,
        VkPhysicalDeviceShaderImageFootprintFeaturesNV,
        VkPhysicalDeviceShaderIntegerFunctions2FeaturesINTEL,
        VkPhysicalDeviceShaderSMBuiltinsFeaturesNV,
        VkPhysicalDeviceShaderSMBuiltinsPropertiesNV,
        VkPhysicalDeviceShaderSubgroupExtendedTypesFeatures,
        VkPhysicalDeviceShaderSubgroupExtendedTypesFeaturesKHR,
        VkPhysicalDeviceShadingRateImageFeaturesNV,
        VkPhysicalDeviceShadingRateImagePropertiesNV,
        VkPhysicalDeviceSparseImageFormatInfo2,
        VkPhysicalDeviceSparseImageFormatInfo2KHR,
        VkPhysicalDeviceSparseProperties,
        VkPhysicalDeviceSubgroupProperties,
        VkPhysicalDeviceSubgroupSizeControlFeaturesEXT,
        VkPhysicalDeviceSubgroupSizeControlPropertiesEXT,
        VkPhysicalDeviceSurfaceInfo2KHR,
        VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT,
        VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT,
        VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT,
        VkPhysicalDeviceTimelineSemaphoreFeatures,
        VkPhysicalDeviceTimelineSemaphoreFeaturesKHR,
        VkPhysicalDeviceTimelineSemaphoreProperties,
        VkPhysicalDeviceTimelineSemaphorePropertiesKHR,
        VkPhysicalDeviceToolPropertiesEXT,
        VkPhysicalDeviceTransformFeedbackFeaturesEXT,
        VkPhysicalDeviceTransformFeedbackPropertiesEXT,
        VkPhysicalDeviceUniformBufferStandardLayoutFeatures,
        VkPhysicalDeviceUniformBufferStandardLayoutFeaturesKHR,
        VkPhysicalDeviceVariablePointerFeatures,
        VkPhysicalDeviceVariablePointerFeaturesKHR,
        VkPhysicalDeviceVariablePointersFeatures,
        VkPhysicalDeviceVariablePointersFeaturesKHR,
        VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT,
        VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT,
        VkPhysicalDeviceVulkan11Features,
        VkPhysicalDeviceVulkan11Properties,
        VkPhysicalDeviceVulkan12Features,
        VkPhysicalDeviceVulkan12Properties,
        VkPhysicalDeviceVulkanMemoryModelFeatures,
        VkPhysicalDeviceVulkanMemoryModelFeaturesKHR,
        VkPhysicalDeviceYcbcrImageArraysFeaturesEXT,
        VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_SPEC_VERSION,
        pattern VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_SPEC_VERSION,
        VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME,
        pattern VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO_KHR,
        pattern VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES_KHR,
        pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES_KHR,
        pattern VK_LUID_SIZE_KHR,
        pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR,
        pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR,
        pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR,
        pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT_KHR,
        pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT_KHR,
        pattern VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT_KHR,
        pattern VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT_KHR)
       where
import GHC.Ptr                                                 (Ptr (..))
import Graphics.Vulkan.Constants                               (pattern VK_LUID_SIZE_KHR)
import Graphics.Vulkan.Core_1_1                                (pattern VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES,
                                                                pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO)
import Graphics.Vulkan.Ext.VK_KHR_external_memory_capabilities (pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES_KHR)
import Graphics.Vulkan.Marshal
import Graphics.Vulkan.Marshal.Proc                            (VulkanProc (..))
import Graphics.Vulkan.Types.BaseTypes
import Graphics.Vulkan.Types.Bitmasks
import Graphics.Vulkan.Types.Enum.External
import Graphics.Vulkan.Types.Enum.StructureType
import Graphics.Vulkan.Types.Handles
import Graphics.Vulkan.Types.Struct.External
import Graphics.Vulkan.Types.Struct.PhysicalDevice

pattern VkGetPhysicalDeviceExternalSemaphorePropertiesKHR ::
        CString

pattern VkGetPhysicalDeviceExternalSemaphorePropertiesKHR <-
        (is_VkGetPhysicalDeviceExternalSemaphorePropertiesKHR -> True)
  where
    VkGetPhysicalDeviceExternalSemaphorePropertiesKHR
      = _VkGetPhysicalDeviceExternalSemaphorePropertiesKHR

{-# INLINE _VkGetPhysicalDeviceExternalSemaphorePropertiesKHR #-}

_VkGetPhysicalDeviceExternalSemaphorePropertiesKHR :: CString
_VkGetPhysicalDeviceExternalSemaphorePropertiesKHR
  = Ptr "vkGetPhysicalDeviceExternalSemaphorePropertiesKHR\NUL"#

{-# INLINE is_VkGetPhysicalDeviceExternalSemaphorePropertiesKHR #-}

is_VkGetPhysicalDeviceExternalSemaphorePropertiesKHR ::
                                                     CString -> Bool
is_VkGetPhysicalDeviceExternalSemaphorePropertiesKHR
  = (EQ ==) .
      cmpCStrings _VkGetPhysicalDeviceExternalSemaphorePropertiesKHR

type VkGetPhysicalDeviceExternalSemaphorePropertiesKHR =
     "vkGetPhysicalDeviceExternalSemaphorePropertiesKHR"

-- | This is an alias for `vkGetPhysicalDeviceExternalSemaphoreProperties`.
--
--   > void vkGetPhysicalDeviceExternalSemaphorePropertiesKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , const VkPhysicalDeviceExternalSemaphoreInfo* pExternalSemaphoreInfo
--   >     , VkExternalSemaphoreProperties* pExternalSemaphoreProperties
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#vkGetPhysicalDeviceExternalSemaphorePropertiesKHR vkGetPhysicalDeviceExternalSemaphorePropertiesKHR registry at www.khronos.org>
type HS_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR =
     VkPhysicalDevice -- ^ physicalDevice
                      ->
       Ptr VkPhysicalDeviceExternalSemaphoreInfo -- ^ pExternalSemaphoreInfo
                                                 ->
         Ptr VkExternalSemaphoreProperties -- ^ pExternalSemaphoreProperties
                                           -> IO ()

type PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR =
     FunPtr HS_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR

foreign import ccall unsafe "dynamic"
               unwrapVkGetPhysicalDeviceExternalSemaphorePropertiesKHRUnsafe ::
               PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR ->
                 HS_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR

foreign import ccall safe "dynamic"
               unwrapVkGetPhysicalDeviceExternalSemaphorePropertiesKHRSafe ::
               PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR ->
                 HS_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR

instance VulkanProc
           "vkGetPhysicalDeviceExternalSemaphorePropertiesKHR"
         where
    type VkProcType "vkGetPhysicalDeviceExternalSemaphorePropertiesKHR"
         = HS_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR
    vkProcSymbol = _VkGetPhysicalDeviceExternalSemaphorePropertiesKHR

    {-# INLINE vkProcSymbol #-}
    unwrapVkProcPtrUnsafe
      = unwrapVkGetPhysicalDeviceExternalSemaphorePropertiesKHRUnsafe

    {-# INLINE unwrapVkProcPtrUnsafe #-}
    unwrapVkProcPtrSafe
      = unwrapVkGetPhysicalDeviceExternalSemaphorePropertiesKHRSafe

    {-# INLINE unwrapVkProcPtrSafe #-}

pattern VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_SPEC_VERSION ::
        (Num a, Eq a) => a

pattern VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_SPEC_VERSION = 1

type VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME ::
        CString

pattern VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME <-
        (is_VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME -> True)
  where
    VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME
      = _VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME

{-# INLINE _VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME
           #-}

_VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME :: CString
_VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME
  = Ptr "VK_KHR_external_semaphore_capabilities\NUL"#

{-# INLINE is_VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME
           #-}

is_VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME ::
                                                         CString -> Bool
is_VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME
  = (EQ ==) .
      cmpCStrings _VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME

type VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME =
     "VK_KHR_external_semaphore_capabilities"

pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO_KHR
        = VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO

pattern VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES_KHR =
        VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES

pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR =
        VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT

pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR =
        VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT

pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR
        = VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT

pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT_KHR =
        VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT

pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT_KHR =
        VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT

pattern VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT_KHR =
        VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT

pattern VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT_KHR =
        VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT
