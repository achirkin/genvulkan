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
module Graphics.Vulkan.Ext.VK_AMD_draw_indirect_count
       (-- * Vulkan extension: @VK_AMD_draw_indirect_count@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Daniel Rakos @drakos-amd@
        --
        -- author: @AMD@
        --
        -- type: @device@
        --
        -- Extension number: @34@
        VkCmdDrawIndirectCountAMD, pattern VkCmdDrawIndirectCountAMD,
        HS_vkCmdDrawIndirectCountAMD, PFN_vkCmdDrawIndirectCountAMD,
        VkCmdDrawIndexedIndirectCountAMD,
        pattern VkCmdDrawIndexedIndirectCountAMD,
        HS_vkCmdDrawIndexedIndirectCountAMD,
        PFN_vkCmdDrawIndexedIndirectCountAMD,
        module Graphics.Vulkan.Marshal, AHardwareBuffer(), ANativeWindow(),
        CAMetalLayer(), VkBool32(..), VkDeviceAddress(..),
        VkDeviceSize(..), VkFlags(..), VkSampleMask(..),
        VkAccelerationStructureKHR, VkAccelerationStructureKHR_T(),
        VkAccelerationStructureNV, VkAccelerationStructureNV_T(), VkBuffer,
        VkBufferView, VkBufferView_T(), VkBuffer_T(), VkCommandBuffer,
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
        VK_AMD_DRAW_INDIRECT_COUNT_SPEC_VERSION,
        pattern VK_AMD_DRAW_INDIRECT_COUNT_SPEC_VERSION,
        VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME,
        pattern VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME)
       where
import GHC.Ptr                         (Ptr (..))
import Graphics.Vulkan.Marshal
import Graphics.Vulkan.Marshal.Proc    (VulkanProc (..))
import Graphics.Vulkan.Types.BaseTypes
import Graphics.Vulkan.Types.Handles

pattern VkCmdDrawIndirectCountAMD :: CString

pattern VkCmdDrawIndirectCountAMD <-
        (is_VkCmdDrawIndirectCountAMD -> True)
  where
    VkCmdDrawIndirectCountAMD = _VkCmdDrawIndirectCountAMD

{-# INLINE _VkCmdDrawIndirectCountAMD #-}

_VkCmdDrawIndirectCountAMD :: CString
_VkCmdDrawIndirectCountAMD = Ptr "vkCmdDrawIndirectCountAMD\NUL"#

{-# INLINE is_VkCmdDrawIndirectCountAMD #-}

is_VkCmdDrawIndirectCountAMD :: CString -> Bool
is_VkCmdDrawIndirectCountAMD
  = (EQ ==) . cmpCStrings _VkCmdDrawIndirectCountAMD

type VkCmdDrawIndirectCountAMD = "vkCmdDrawIndirectCountAMD"

-- | This is an alias for `vkCmdDrawIndirectCount`.
--
--   Queues: 'graphics'.
--
--   Renderpass: @inside@
--
--   Pipeline: @graphics@
--
--   > void vkCmdDrawIndirectCountAMD
--   >     ( VkCommandBuffer commandBuffer
--   >     , VkBuffer buffer
--   >     , VkDeviceSize offset
--   >     , VkBuffer countBuffer
--   >     , VkDeviceSize countBufferOffset
--   >     , uint32_t maxDrawCount
--   >     , uint32_t stride
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#vkCmdDrawIndirectCountAMD vkCmdDrawIndirectCountAMD registry at www.khronos.org>
type HS_vkCmdDrawIndirectCountAMD =
     VkCommandBuffer -- ^ commandBuffer
                     ->
       VkBuffer -- ^ buffer
                ->
         VkDeviceSize -- ^ offset
                      ->
           VkBuffer -- ^ countBuffer
                    -> VkDeviceSize -- ^ countBufferOffset
                                    -> Word32 -- ^ maxDrawCount
                                              -> Word32 -- ^ stride
                                                        -> IO ()

type PFN_vkCmdDrawIndirectCountAMD =
     FunPtr HS_vkCmdDrawIndirectCountAMD

foreign import ccall unsafe "dynamic"
               unwrapVkCmdDrawIndirectCountAMDUnsafe ::
               PFN_vkCmdDrawIndirectCountAMD -> HS_vkCmdDrawIndirectCountAMD

foreign import ccall safe "dynamic"
               unwrapVkCmdDrawIndirectCountAMDSafe ::
               PFN_vkCmdDrawIndirectCountAMD -> HS_vkCmdDrawIndirectCountAMD

instance VulkanProc "vkCmdDrawIndirectCountAMD" where
    type VkProcType "vkCmdDrawIndirectCountAMD" =
         HS_vkCmdDrawIndirectCountAMD
    vkProcSymbol = _VkCmdDrawIndirectCountAMD

    {-# INLINE vkProcSymbol #-}
    unwrapVkProcPtrUnsafe = unwrapVkCmdDrawIndirectCountAMDUnsafe

    {-# INLINE unwrapVkProcPtrUnsafe #-}
    unwrapVkProcPtrSafe = unwrapVkCmdDrawIndirectCountAMDSafe

    {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkCmdDrawIndexedIndirectCountAMD :: CString

pattern VkCmdDrawIndexedIndirectCountAMD <-
        (is_VkCmdDrawIndexedIndirectCountAMD -> True)
  where
    VkCmdDrawIndexedIndirectCountAMD
      = _VkCmdDrawIndexedIndirectCountAMD

{-# INLINE _VkCmdDrawIndexedIndirectCountAMD #-}

_VkCmdDrawIndexedIndirectCountAMD :: CString
_VkCmdDrawIndexedIndirectCountAMD
  = Ptr "vkCmdDrawIndexedIndirectCountAMD\NUL"#

{-# INLINE is_VkCmdDrawIndexedIndirectCountAMD #-}

is_VkCmdDrawIndexedIndirectCountAMD :: CString -> Bool
is_VkCmdDrawIndexedIndirectCountAMD
  = (EQ ==) . cmpCStrings _VkCmdDrawIndexedIndirectCountAMD

type VkCmdDrawIndexedIndirectCountAMD =
     "vkCmdDrawIndexedIndirectCountAMD"

-- | This is an alias for `vkCmdDrawIndexedIndirectCount`.
--
--   Queues: 'graphics'.
--
--   Renderpass: @inside@
--
--   Pipeline: @graphics@
--
--   > void vkCmdDrawIndexedIndirectCountAMD
--   >     ( VkCommandBuffer commandBuffer
--   >     , VkBuffer buffer
--   >     , VkDeviceSize offset
--   >     , VkBuffer countBuffer
--   >     , VkDeviceSize countBufferOffset
--   >     , uint32_t maxDrawCount
--   >     , uint32_t stride
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#vkCmdDrawIndexedIndirectCountAMD vkCmdDrawIndexedIndirectCountAMD registry at www.khronos.org>
type HS_vkCmdDrawIndexedIndirectCountAMD =
     VkCommandBuffer -- ^ commandBuffer
                     ->
       VkBuffer -- ^ buffer
                ->
         VkDeviceSize -- ^ offset
                      ->
           VkBuffer -- ^ countBuffer
                    -> VkDeviceSize -- ^ countBufferOffset
                                    -> Word32 -- ^ maxDrawCount
                                              -> Word32 -- ^ stride
                                                        -> IO ()

type PFN_vkCmdDrawIndexedIndirectCountAMD =
     FunPtr HS_vkCmdDrawIndexedIndirectCountAMD

foreign import ccall unsafe "dynamic"
               unwrapVkCmdDrawIndexedIndirectCountAMDUnsafe ::
               PFN_vkCmdDrawIndexedIndirectCountAMD ->
                 HS_vkCmdDrawIndexedIndirectCountAMD

foreign import ccall safe "dynamic"
               unwrapVkCmdDrawIndexedIndirectCountAMDSafe ::
               PFN_vkCmdDrawIndexedIndirectCountAMD ->
                 HS_vkCmdDrawIndexedIndirectCountAMD

instance VulkanProc "vkCmdDrawIndexedIndirectCountAMD" where
    type VkProcType "vkCmdDrawIndexedIndirectCountAMD" =
         HS_vkCmdDrawIndexedIndirectCountAMD
    vkProcSymbol = _VkCmdDrawIndexedIndirectCountAMD

    {-# INLINE vkProcSymbol #-}
    unwrapVkProcPtrUnsafe
      = unwrapVkCmdDrawIndexedIndirectCountAMDUnsafe

    {-# INLINE unwrapVkProcPtrUnsafe #-}
    unwrapVkProcPtrSafe = unwrapVkCmdDrawIndexedIndirectCountAMDSafe

    {-# INLINE unwrapVkProcPtrSafe #-}

pattern VK_AMD_DRAW_INDIRECT_COUNT_SPEC_VERSION :: (Num a, Eq a) =>
        a

pattern VK_AMD_DRAW_INDIRECT_COUNT_SPEC_VERSION = 2

type VK_AMD_DRAW_INDIRECT_COUNT_SPEC_VERSION = 2

pattern VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME :: CString

pattern VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME <-
        (is_VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME -> True)
  where
    VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME
      = _VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME

{-# INLINE _VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME #-}

_VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME :: CString
_VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME
  = Ptr "VK_AMD_draw_indirect_count\NUL"#

{-# INLINE is_VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME #-}

is_VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME :: CString -> Bool
is_VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME
  = (EQ ==) . cmpCStrings _VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME

type VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME =
     "VK_AMD_draw_indirect_count"
