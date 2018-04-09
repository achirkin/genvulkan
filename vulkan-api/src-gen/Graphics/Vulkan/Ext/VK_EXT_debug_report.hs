{-# OPTIONS_GHC -fno-warn-missing-pattern-synonym-signatures#-}
{-# OPTIONS_GHC -fno-warn-orphans#-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE MagicHash                #-}
{-# LANGUAGE PatternSynonyms          #-}
{-# LANGUAGE Strict                   #-}
{-# LANGUAGE TypeFamilies             #-}
{-# LANGUAGE ViewPatterns             #-}
module Graphics.Vulkan.Ext.VK_EXT_debug_report
       (-- * Vulkan extension: @VK_EXT_debug_report@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Courtney Goeltzenleuchter @courtney@
        --
        -- author: @GOOGLE@
        --
        -- type: @instance@
        --
        -- Extension number: @12@
        module Graphics.Vulkan.Marshal,
        module Graphics.Vulkan.Types.Struct.VkApplicationInfo,
        module Graphics.Vulkan.Types.BaseTypes,
        module Graphics.Vulkan.Types.Struct.VkDebugReportCallbackCreateInfoEXT,
        module Graphics.Vulkan.Types.Enum.VkDebugReportFlagsEXT,
        module Graphics.Vulkan.Types.Enum.VkDebugReportObjectTypeEXT,
        module Graphics.Vulkan.Types.Bitmasks,
        module Graphics.Vulkan.Types.Struct.VkInstanceCreateInfo,
        module Graphics.Vulkan.Types.Enum.VkStructureType,
        -- > #include "vk_platform.h"
        VkCreateDebugReportCallbackEXT,
        pattern VkCreateDebugReportCallbackEXT,
        HS_vkCreateDebugReportCallbackEXT,
        PFN_vkCreateDebugReportCallbackEXT,
        unwrapVkCreateDebugReportCallbackEXT,
        VkDestroyDebugReportCallbackEXT,
        pattern VkDestroyDebugReportCallbackEXT,
        HS_vkDestroyDebugReportCallbackEXT,
        PFN_vkDestroyDebugReportCallbackEXT,
        unwrapVkDestroyDebugReportCallbackEXT, VkDebugReportMessageEXT,
        pattern VkDebugReportMessageEXT, HS_vkDebugReportMessageEXT,
        PFN_vkDebugReportMessageEXT, unwrapVkDebugReportMessageEXT,
        module Graphics.Vulkan.Types.Enum.VkInternalAllocationType,
        module Graphics.Vulkan.Types.Enum.VkResult,
        module Graphics.Vulkan.Types.Enum.VkSystemAllocationScope,
        module Graphics.Vulkan.Types.Funcpointers,
        module Graphics.Vulkan.Types.Handles,
        module Graphics.Vulkan.Types.Struct.VkAllocationCallbacks,
        VK_EXT_DEBUG_REPORT_SPEC_VERSION,
        pattern VK_EXT_DEBUG_REPORT_SPEC_VERSION,
        VK_EXT_DEBUG_REPORT_EXTENSION_NAME,
        pattern VK_EXT_DEBUG_REPORT_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT,
        pattern VK_ERROR_VALIDATION_FAILED_EXT,
        pattern VK_STRUCTURE_TYPE_DEBUG_REPORT_CREATE_INFO_EXT,
        pattern VK_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT,
        pattern VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_EXT,
        pattern VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT,
        pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_EXT)
       where
import           GHC.Ptr                                                         (Ptr (..))
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Proc                                    (VulkanProc (..))
import           Graphics.Vulkan.Types.BaseTypes
import           Graphics.Vulkan.Types.Bitmasks
import           Graphics.Vulkan.Types.Enum.VkDebugReportFlagsEXT
import           Graphics.Vulkan.Types.Enum.VkDebugReportObjectTypeEXT
import           Graphics.Vulkan.Types.Enum.VkInternalAllocationType
import           Graphics.Vulkan.Types.Enum.VkObjectType                         (VkObjectType (..))
import           Graphics.Vulkan.Types.Enum.VkResult
import           Graphics.Vulkan.Types.Enum.VkStructureType
import           Graphics.Vulkan.Types.Enum.VkSystemAllocationScope
import           Graphics.Vulkan.Types.Funcpointers
import           Graphics.Vulkan.Types.Handles
import           Graphics.Vulkan.Types.Struct.VkAllocationCallbacks
import           Graphics.Vulkan.Types.Struct.VkApplicationInfo
import           Graphics.Vulkan.Types.Struct.VkDebugReportCallbackCreateInfoEXT
import           Graphics.Vulkan.Types.Struct.VkInstanceCreateInfo

pattern VkCreateDebugReportCallbackEXT :: CString

pattern VkCreateDebugReportCallbackEXT <-
        (is_VkCreateDebugReportCallbackEXT -> True)
  where VkCreateDebugReportCallbackEXT
          = _VkCreateDebugReportCallbackEXT

{-# INLINE _VkCreateDebugReportCallbackEXT #-}

_VkCreateDebugReportCallbackEXT :: CString
_VkCreateDebugReportCallbackEXT
  = Ptr "vkCreateDebugReportCallbackEXT\NUL"#

{-# INLINE is_VkCreateDebugReportCallbackEXT #-}

is_VkCreateDebugReportCallbackEXT :: CString -> Bool
is_VkCreateDebugReportCallbackEXT
  = (EQ ==) . cmpCStrings _VkCreateDebugReportCallbackEXT

type VkCreateDebugReportCallbackEXT =
     "vkCreateDebugReportCallbackEXT"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY'.
--
--   > VkResult vkCreateDebugReportCallbackEXT
--   >     ( VkInstance instance
--   >     , const VkDebugReportCallbackCreateInfoEXT* pCreateInfo
--   >     , const VkAllocationCallbacks* pAllocator
--   >     , VkDebugReportCallbackEXT* pCallback
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateDebugReportCallbackEXTvkCreateDebugReportCallbackEXT registry at www.khronos.org>
type HS_vkCreateDebugReportCallbackEXT =
     VkInstance -- ^ instance
                ->
       Ptr VkDebugReportCallbackCreateInfoEXT -- ^ pCreateInfo
                                              ->
         Ptr VkAllocationCallbacks -- ^ pAllocator
                                   ->
           Ptr VkDebugReportCallbackEXT -- ^ pCallback
                                        -> IO VkResult

type PFN_vkCreateDebugReportCallbackEXT =
     FunPtr HS_vkCreateDebugReportCallbackEXT

foreign import ccall "dynamic" unwrapVkCreateDebugReportCallbackEXT
               ::
               PFN_vkCreateDebugReportCallbackEXT ->
                 HS_vkCreateDebugReportCallbackEXT

instance VulkanProc "vkCreateDebugReportCallbackEXT" where
        type VkProcType "vkCreateDebugReportCallbackEXT" =
             HS_vkCreateDebugReportCallbackEXT
        vkProcSymbol = _VkCreateDebugReportCallbackEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkCreateDebugReportCallbackEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkDestroyDebugReportCallbackEXT :: CString

pattern VkDestroyDebugReportCallbackEXT <-
        (is_VkDestroyDebugReportCallbackEXT -> True)
  where VkDestroyDebugReportCallbackEXT
          = _VkDestroyDebugReportCallbackEXT

{-# INLINE _VkDestroyDebugReportCallbackEXT #-}

_VkDestroyDebugReportCallbackEXT :: CString
_VkDestroyDebugReportCallbackEXT
  = Ptr "vkDestroyDebugReportCallbackEXT\NUL"#

{-# INLINE is_VkDestroyDebugReportCallbackEXT #-}

is_VkDestroyDebugReportCallbackEXT :: CString -> Bool
is_VkDestroyDebugReportCallbackEXT
  = (EQ ==) . cmpCStrings _VkDestroyDebugReportCallbackEXT

type VkDestroyDebugReportCallbackEXT =
     "vkDestroyDebugReportCallbackEXT"

-- | > () vkDestroyDebugReportCallbackEXT
--   >     ( VkInstance instance
--   >     , VkDebugReportCallbackEXT callback
--   >     , const VkAllocationCallbacks* pAllocator
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkDestroyDebugReportCallbackEXTvkDestroyDebugReportCallbackEXT registry at www.khronos.org>
type HS_vkDestroyDebugReportCallbackEXT =
     VkInstance -- ^ instance
                ->
       VkDebugReportCallbackEXT -- ^ callback
                                -> Ptr VkAllocationCallbacks -- ^ pAllocator
                                                             -> IO ()

type PFN_vkDestroyDebugReportCallbackEXT =
     FunPtr HS_vkDestroyDebugReportCallbackEXT

foreign import ccall "dynamic"
               unwrapVkDestroyDebugReportCallbackEXT ::
               PFN_vkDestroyDebugReportCallbackEXT ->
                 HS_vkDestroyDebugReportCallbackEXT

instance VulkanProc "vkDestroyDebugReportCallbackEXT" where
        type VkProcType "vkDestroyDebugReportCallbackEXT" =
             HS_vkDestroyDebugReportCallbackEXT
        vkProcSymbol = _VkDestroyDebugReportCallbackEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkDestroyDebugReportCallbackEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkDebugReportMessageEXT :: CString

pattern VkDebugReportMessageEXT <-
        (is_VkDebugReportMessageEXT -> True)
  where VkDebugReportMessageEXT = _VkDebugReportMessageEXT

{-# INLINE _VkDebugReportMessageEXT #-}

_VkDebugReportMessageEXT :: CString
_VkDebugReportMessageEXT = Ptr "vkDebugReportMessageEXT\NUL"#

{-# INLINE is_VkDebugReportMessageEXT #-}

is_VkDebugReportMessageEXT :: CString -> Bool
is_VkDebugReportMessageEXT
  = (EQ ==) . cmpCStrings _VkDebugReportMessageEXT

type VkDebugReportMessageEXT = "vkDebugReportMessageEXT"

-- | > () vkDebugReportMessageEXT
--   >     ( VkInstance instance
--   >     , VkDebugReportFlagsEXT flags
--   >     , VkDebugReportObjectTypeEXT objectType
--   >     , uint64_t object
--   >     , size_t location
--   >     , int32_t messageCode
--   >     , const char* pLayerPrefix
--   >     , const char* pMessage
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkDebugReportMessageEXTvkDebugReportMessageEXT registry at www.khronos.org>
type HS_vkDebugReportMessageEXT =
     VkInstance -- ^ instance
                ->
       VkDebugReportFlagsEXT -- ^ flags
                             ->
         VkDebugReportObjectTypeEXT -- ^ objectType
                                    ->
           Word64 -- ^ object
                  -> CSize -- ^ location
                           -> Int32 -- ^ messageCode
                                    -> CString -- ^ pLayerPrefix
                                               -> CString -- ^ pMessage
                                                          -> IO ()

type PFN_vkDebugReportMessageEXT =
     FunPtr HS_vkDebugReportMessageEXT

foreign import ccall "dynamic" unwrapVkDebugReportMessageEXT ::
               PFN_vkDebugReportMessageEXT -> HS_vkDebugReportMessageEXT

instance VulkanProc "vkDebugReportMessageEXT" where
        type VkProcType "vkDebugReportMessageEXT" =
             HS_vkDebugReportMessageEXT
        vkProcSymbol = _VkDebugReportMessageEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkDebugReportMessageEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VK_EXT_DEBUG_REPORT_SPEC_VERSION :: (Num a, Eq a) => a

pattern VK_EXT_DEBUG_REPORT_SPEC_VERSION = 9

type VK_EXT_DEBUG_REPORT_SPEC_VERSION = 9

pattern VK_EXT_DEBUG_REPORT_EXTENSION_NAME :: CString

pattern VK_EXT_DEBUG_REPORT_EXTENSION_NAME <-
        (is_VK_EXT_DEBUG_REPORT_EXTENSION_NAME -> True)
  where VK_EXT_DEBUG_REPORT_EXTENSION_NAME
          = _VK_EXT_DEBUG_REPORT_EXTENSION_NAME

{-# INLINE _VK_EXT_DEBUG_REPORT_EXTENSION_NAME #-}

_VK_EXT_DEBUG_REPORT_EXTENSION_NAME :: CString
_VK_EXT_DEBUG_REPORT_EXTENSION_NAME
  = Ptr "VK_EXT_debug_report\NUL"#

{-# INLINE is_VK_EXT_DEBUG_REPORT_EXTENSION_NAME #-}

is_VK_EXT_DEBUG_REPORT_EXTENSION_NAME :: CString -> Bool
is_VK_EXT_DEBUG_REPORT_EXTENSION_NAME
  = (EQ ==) . cmpCStrings _VK_EXT_DEBUG_REPORT_EXTENSION_NAME

type VK_EXT_DEBUG_REPORT_EXTENSION_NAME = "VK_EXT_debug_report"

pattern VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT =
        VkStructureType 1000011000

pattern VK_ERROR_VALIDATION_FAILED_EXT :: VkResult

pattern VK_ERROR_VALIDATION_FAILED_EXT = VkResult (-1000011001)

pattern VK_STRUCTURE_TYPE_DEBUG_REPORT_CREATE_INFO_EXT =
        VK_STRUCTURE_TYPE_DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT

-- | VkDebugReportCallbackEXT
pattern VK_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT :: VkObjectType

pattern VK_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT =
        VkObjectType 1000011000

pattern VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_EXT =
        VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT_EXT

pattern VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT ::
        VkDebugReportObjectTypeEXT

pattern VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT =
        VkDebugReportObjectTypeEXT 1000156000

pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_EXT
        :: VkDebugReportObjectTypeEXT

pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_EXT
        = VkDebugReportObjectTypeEXT 1000085000
