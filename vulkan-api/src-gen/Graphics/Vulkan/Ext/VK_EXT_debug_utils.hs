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
module Graphics.Vulkan.Ext.VK_EXT_debug_utils
       (-- * Vulkan extension: @VK_EXT_debug_utils@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Mark Young @MarkY_LunarG@
        --
        -- author: @EXT@
        --
        -- type: @instance@
        --
        -- Extension number: @129@
        module Graphics.Vulkan.Marshal,
        module Graphics.Vulkan.Types.Struct.VkApplicationInfo,
        module Graphics.Vulkan.Types.BaseTypes,
        module Graphics.Vulkan.Types.Struct.VkDebugUtilsLabelEXT,
        module Graphics.Vulkan.Types.Enum.VkDebugUtilsMessageSeverityFlagsEXT,
        module Graphics.Vulkan.Types.Enum.VkDebugUtilsMessageTypeFlagsEXT,
        module Graphics.Vulkan.Types.Struct.VkDebugUtilsMessengerCallbackDataEXT,
        module Graphics.Vulkan.Types.Bitmasks,
        module Graphics.Vulkan.Types.Struct.VkDebugUtilsMessengerCreateInfoEXT,
        module Graphics.Vulkan.Types.Struct.VkDebugUtilsObjectNameInfoEXT,
        module Graphics.Vulkan.Types.Struct.VkDebugUtilsObjectTagInfoEXT,
        module Graphics.Vulkan.Types.Struct.VkInstanceCreateInfo,
        module Graphics.Vulkan.Types.Enum.VkObjectType,
        module Graphics.Vulkan.Types.Enum.VkStructureType,
        -- > #include "vk_platform.h"
        VkSetDebugUtilsObjectNameEXT, pattern VkSetDebugUtilsObjectNameEXT,
        HS_vkSetDebugUtilsObjectNameEXT, PFN_vkSetDebugUtilsObjectNameEXT,
        unwrapVkSetDebugUtilsObjectNameEXT, VkSetDebugUtilsObjectTagEXT,
        pattern VkSetDebugUtilsObjectTagEXT,
        HS_vkSetDebugUtilsObjectTagEXT, PFN_vkSetDebugUtilsObjectTagEXT,
        unwrapVkSetDebugUtilsObjectTagEXT, VkQueueBeginDebugUtilsLabelEXT,
        pattern VkQueueBeginDebugUtilsLabelEXT,
        HS_vkQueueBeginDebugUtilsLabelEXT,
        PFN_vkQueueBeginDebugUtilsLabelEXT,
        unwrapVkQueueBeginDebugUtilsLabelEXT, VkQueueEndDebugUtilsLabelEXT,
        pattern VkQueueEndDebugUtilsLabelEXT,
        HS_vkQueueEndDebugUtilsLabelEXT, PFN_vkQueueEndDebugUtilsLabelEXT,
        unwrapVkQueueEndDebugUtilsLabelEXT,
        VkQueueInsertDebugUtilsLabelEXT,
        pattern VkQueueInsertDebugUtilsLabelEXT,
        HS_vkQueueInsertDebugUtilsLabelEXT,
        PFN_vkQueueInsertDebugUtilsLabelEXT,
        unwrapVkQueueInsertDebugUtilsLabelEXT,
        VkCmdBeginDebugUtilsLabelEXT, pattern VkCmdBeginDebugUtilsLabelEXT,
        HS_vkCmdBeginDebugUtilsLabelEXT, PFN_vkCmdBeginDebugUtilsLabelEXT,
        unwrapVkCmdBeginDebugUtilsLabelEXT, VkCmdEndDebugUtilsLabelEXT,
        pattern VkCmdEndDebugUtilsLabelEXT, HS_vkCmdEndDebugUtilsLabelEXT,
        PFN_vkCmdEndDebugUtilsLabelEXT, unwrapVkCmdEndDebugUtilsLabelEXT,
        VkCmdInsertDebugUtilsLabelEXT,
        pattern VkCmdInsertDebugUtilsLabelEXT,
        HS_vkCmdInsertDebugUtilsLabelEXT,
        PFN_vkCmdInsertDebugUtilsLabelEXT,
        unwrapVkCmdInsertDebugUtilsLabelEXT,
        VkCreateDebugUtilsMessengerEXT,
        pattern VkCreateDebugUtilsMessengerEXT,
        HS_vkCreateDebugUtilsMessengerEXT,
        PFN_vkCreateDebugUtilsMessengerEXT,
        unwrapVkCreateDebugUtilsMessengerEXT,
        VkDestroyDebugUtilsMessengerEXT,
        pattern VkDestroyDebugUtilsMessengerEXT,
        HS_vkDestroyDebugUtilsMessengerEXT,
        PFN_vkDestroyDebugUtilsMessengerEXT,
        unwrapVkDestroyDebugUtilsMessengerEXT,
        VkSubmitDebugUtilsMessageEXT, pattern VkSubmitDebugUtilsMessageEXT,
        HS_vkSubmitDebugUtilsMessageEXT, PFN_vkSubmitDebugUtilsMessageEXT,
        unwrapVkSubmitDebugUtilsMessageEXT,
        module Graphics.Vulkan.Types.Enum.VkInternalAllocationType,
        module Graphics.Vulkan.Types.Enum.VkResult,
        module Graphics.Vulkan.Types.Enum.VkSystemAllocationScope,
        module Graphics.Vulkan.Types.Funcpointers,
        module Graphics.Vulkan.Types.Handles,
        module Graphics.Vulkan.Types.Struct.VkAllocationCallbacks,
        VK_EXT_DEBUG_UTILS_SPEC_VERSION,
        pattern VK_EXT_DEBUG_UTILS_SPEC_VERSION,
        VK_EXT_DEBUG_UTILS_EXTENSION_NAME,
        pattern VK_EXT_DEBUG_UTILS_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT,
        pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT,
        pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT,
        pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT,
        pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT,
        pattern VK_OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT)
       where
import           GHC.Ptr
                                                                                    (Ptr (..))
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Proc
                                                                                    (VulkanProc (..))
import           Graphics.Vulkan.Types.BaseTypes
import           Graphics.Vulkan.Types.Bitmasks
import           Graphics.Vulkan.Types.Enum.VkDebugUtilsMessageSeverityFlagsEXT
import           Graphics.Vulkan.Types.Enum.VkDebugUtilsMessageTypeFlagsEXT
import           Graphics.Vulkan.Types.Enum.VkInternalAllocationType
import           Graphics.Vulkan.Types.Enum.VkObjectType
import           Graphics.Vulkan.Types.Enum.VkResult
import           Graphics.Vulkan.Types.Enum.VkStructureType
import           Graphics.Vulkan.Types.Enum.VkSystemAllocationScope
import           Graphics.Vulkan.Types.Funcpointers
import           Graphics.Vulkan.Types.Handles
import           Graphics.Vulkan.Types.Struct.VkAllocationCallbacks
import           Graphics.Vulkan.Types.Struct.VkApplicationInfo
import           Graphics.Vulkan.Types.Struct.VkDebugUtilsLabelEXT
import           Graphics.Vulkan.Types.Struct.VkDebugUtilsMessengerCallbackDataEXT
import           Graphics.Vulkan.Types.Struct.VkDebugUtilsMessengerCreateInfoEXT
import           Graphics.Vulkan.Types.Struct.VkDebugUtilsObjectNameInfoEXT
import           Graphics.Vulkan.Types.Struct.VkDebugUtilsObjectTagInfoEXT
import           Graphics.Vulkan.Types.Struct.VkInstanceCreateInfo

pattern VkSetDebugUtilsObjectNameEXT :: CString

pattern VkSetDebugUtilsObjectNameEXT <-
        (is_VkSetDebugUtilsObjectNameEXT -> True)
  where VkSetDebugUtilsObjectNameEXT = _VkSetDebugUtilsObjectNameEXT

{-# INLINE _VkSetDebugUtilsObjectNameEXT #-}

_VkSetDebugUtilsObjectNameEXT :: CString
_VkSetDebugUtilsObjectNameEXT
  = Ptr "vkSetDebugUtilsObjectNameEXT\NUL"#

{-# INLINE is_VkSetDebugUtilsObjectNameEXT #-}

is_VkSetDebugUtilsObjectNameEXT :: CString -> Bool
is_VkSetDebugUtilsObjectNameEXT
  = (EQ ==) . cmpCStrings _VkSetDebugUtilsObjectNameEXT

type VkSetDebugUtilsObjectNameEXT = "vkSetDebugUtilsObjectNameEXT"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkSetDebugUtilsObjectNameEXT
--   >     ( VkDevice device
--   >     , const VkDebugUtilsObjectNameInfoEXT* pNameInfo
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkSetDebugUtilsObjectNameEXT vkSetDebugUtilsObjectNameEXT registry at www.khronos.org>
type HS_vkSetDebugUtilsObjectNameEXT =
     VkDevice -- ^ device
              -> Ptr VkDebugUtilsObjectNameInfoEXT -- ^ pNameInfo
                                                   -> IO VkResult

type PFN_vkSetDebugUtilsObjectNameEXT =
     FunPtr HS_vkSetDebugUtilsObjectNameEXT

foreign import ccall "dynamic" unwrapVkSetDebugUtilsObjectNameEXT
               ::
               PFN_vkSetDebugUtilsObjectNameEXT -> HS_vkSetDebugUtilsObjectNameEXT

instance VulkanProc "vkSetDebugUtilsObjectNameEXT" where
        type VkProcType "vkSetDebugUtilsObjectNameEXT" =
             HS_vkSetDebugUtilsObjectNameEXT
        vkProcSymbol = _VkSetDebugUtilsObjectNameEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkSetDebugUtilsObjectNameEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkSetDebugUtilsObjectTagEXT :: CString

pattern VkSetDebugUtilsObjectTagEXT <-
        (is_VkSetDebugUtilsObjectTagEXT -> True)
  where VkSetDebugUtilsObjectTagEXT = _VkSetDebugUtilsObjectTagEXT

{-# INLINE _VkSetDebugUtilsObjectTagEXT #-}

_VkSetDebugUtilsObjectTagEXT :: CString
_VkSetDebugUtilsObjectTagEXT
  = Ptr "vkSetDebugUtilsObjectTagEXT\NUL"#

{-# INLINE is_VkSetDebugUtilsObjectTagEXT #-}

is_VkSetDebugUtilsObjectTagEXT :: CString -> Bool
is_VkSetDebugUtilsObjectTagEXT
  = (EQ ==) . cmpCStrings _VkSetDebugUtilsObjectTagEXT

type VkSetDebugUtilsObjectTagEXT = "vkSetDebugUtilsObjectTagEXT"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkSetDebugUtilsObjectTagEXT
--   >     ( VkDevice device
--   >     , const VkDebugUtilsObjectTagInfoEXT* pTagInfo
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkSetDebugUtilsObjectTagEXT vkSetDebugUtilsObjectTagEXT registry at www.khronos.org>
type HS_vkSetDebugUtilsObjectTagEXT =
     VkDevice -- ^ device
              -> Ptr VkDebugUtilsObjectTagInfoEXT -- ^ pTagInfo
                                                  -> IO VkResult

type PFN_vkSetDebugUtilsObjectTagEXT =
     FunPtr HS_vkSetDebugUtilsObjectTagEXT

foreign import ccall "dynamic" unwrapVkSetDebugUtilsObjectTagEXT ::
               PFN_vkSetDebugUtilsObjectTagEXT -> HS_vkSetDebugUtilsObjectTagEXT

instance VulkanProc "vkSetDebugUtilsObjectTagEXT" where
        type VkProcType "vkSetDebugUtilsObjectTagEXT" =
             HS_vkSetDebugUtilsObjectTagEXT
        vkProcSymbol = _VkSetDebugUtilsObjectTagEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkSetDebugUtilsObjectTagEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkQueueBeginDebugUtilsLabelEXT :: CString

pattern VkQueueBeginDebugUtilsLabelEXT <-
        (is_VkQueueBeginDebugUtilsLabelEXT -> True)
  where VkQueueBeginDebugUtilsLabelEXT
          = _VkQueueBeginDebugUtilsLabelEXT

{-# INLINE _VkQueueBeginDebugUtilsLabelEXT #-}

_VkQueueBeginDebugUtilsLabelEXT :: CString
_VkQueueBeginDebugUtilsLabelEXT
  = Ptr "vkQueueBeginDebugUtilsLabelEXT\NUL"#

{-# INLINE is_VkQueueBeginDebugUtilsLabelEXT #-}

is_VkQueueBeginDebugUtilsLabelEXT :: CString -> Bool
is_VkQueueBeginDebugUtilsLabelEXT
  = (EQ ==) . cmpCStrings _VkQueueBeginDebugUtilsLabelEXT

type VkQueueBeginDebugUtilsLabelEXT =
     "vkQueueBeginDebugUtilsLabelEXT"

-- | > () vkQueueBeginDebugUtilsLabelEXT
--   >     ( VkQueue queue
--   >     , const VkDebugUtilsLabelEXT* pLabelInfo
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkQueueBeginDebugUtilsLabelEXT vkQueueBeginDebugUtilsLabelEXT registry at www.khronos.org>
type HS_vkQueueBeginDebugUtilsLabelEXT =
     VkQueue -- ^ queue
             -> Ptr VkDebugUtilsLabelEXT -- ^ pLabelInfo
                                         -> IO ()

type PFN_vkQueueBeginDebugUtilsLabelEXT =
     FunPtr HS_vkQueueBeginDebugUtilsLabelEXT

foreign import ccall "dynamic" unwrapVkQueueBeginDebugUtilsLabelEXT
               ::
               PFN_vkQueueBeginDebugUtilsLabelEXT ->
                 HS_vkQueueBeginDebugUtilsLabelEXT

instance VulkanProc "vkQueueBeginDebugUtilsLabelEXT" where
        type VkProcType "vkQueueBeginDebugUtilsLabelEXT" =
             HS_vkQueueBeginDebugUtilsLabelEXT
        vkProcSymbol = _VkQueueBeginDebugUtilsLabelEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkQueueBeginDebugUtilsLabelEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkQueueEndDebugUtilsLabelEXT :: CString

pattern VkQueueEndDebugUtilsLabelEXT <-
        (is_VkQueueEndDebugUtilsLabelEXT -> True)
  where VkQueueEndDebugUtilsLabelEXT = _VkQueueEndDebugUtilsLabelEXT

{-# INLINE _VkQueueEndDebugUtilsLabelEXT #-}

_VkQueueEndDebugUtilsLabelEXT :: CString
_VkQueueEndDebugUtilsLabelEXT
  = Ptr "vkQueueEndDebugUtilsLabelEXT\NUL"#

{-# INLINE is_VkQueueEndDebugUtilsLabelEXT #-}

is_VkQueueEndDebugUtilsLabelEXT :: CString -> Bool
is_VkQueueEndDebugUtilsLabelEXT
  = (EQ ==) . cmpCStrings _VkQueueEndDebugUtilsLabelEXT

type VkQueueEndDebugUtilsLabelEXT = "vkQueueEndDebugUtilsLabelEXT"

-- | > () vkQueueEndDebugUtilsLabelEXT
--   >     ( VkQueue queue
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkQueueEndDebugUtilsLabelEXT vkQueueEndDebugUtilsLabelEXT registry at www.khronos.org>
type HS_vkQueueEndDebugUtilsLabelEXT = VkQueue -- ^ queue
                                               -> IO ()

type PFN_vkQueueEndDebugUtilsLabelEXT =
     FunPtr HS_vkQueueEndDebugUtilsLabelEXT

foreign import ccall "dynamic" unwrapVkQueueEndDebugUtilsLabelEXT
               ::
               PFN_vkQueueEndDebugUtilsLabelEXT -> HS_vkQueueEndDebugUtilsLabelEXT

instance VulkanProc "vkQueueEndDebugUtilsLabelEXT" where
        type VkProcType "vkQueueEndDebugUtilsLabelEXT" =
             HS_vkQueueEndDebugUtilsLabelEXT
        vkProcSymbol = _VkQueueEndDebugUtilsLabelEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkQueueEndDebugUtilsLabelEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkQueueInsertDebugUtilsLabelEXT :: CString

pattern VkQueueInsertDebugUtilsLabelEXT <-
        (is_VkQueueInsertDebugUtilsLabelEXT -> True)
  where VkQueueInsertDebugUtilsLabelEXT
          = _VkQueueInsertDebugUtilsLabelEXT

{-# INLINE _VkQueueInsertDebugUtilsLabelEXT #-}

_VkQueueInsertDebugUtilsLabelEXT :: CString
_VkQueueInsertDebugUtilsLabelEXT
  = Ptr "vkQueueInsertDebugUtilsLabelEXT\NUL"#

{-# INLINE is_VkQueueInsertDebugUtilsLabelEXT #-}

is_VkQueueInsertDebugUtilsLabelEXT :: CString -> Bool
is_VkQueueInsertDebugUtilsLabelEXT
  = (EQ ==) . cmpCStrings _VkQueueInsertDebugUtilsLabelEXT

type VkQueueInsertDebugUtilsLabelEXT =
     "vkQueueInsertDebugUtilsLabelEXT"

-- | > () vkQueueInsertDebugUtilsLabelEXT
--   >     ( VkQueue queue
--   >     , const VkDebugUtilsLabelEXT* pLabelInfo
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkQueueInsertDebugUtilsLabelEXT vkQueueInsertDebugUtilsLabelEXT registry at www.khronos.org>
type HS_vkQueueInsertDebugUtilsLabelEXT =
     VkQueue -- ^ queue
             -> Ptr VkDebugUtilsLabelEXT -- ^ pLabelInfo
                                         -> IO ()

type PFN_vkQueueInsertDebugUtilsLabelEXT =
     FunPtr HS_vkQueueInsertDebugUtilsLabelEXT

foreign import ccall "dynamic"
               unwrapVkQueueInsertDebugUtilsLabelEXT ::
               PFN_vkQueueInsertDebugUtilsLabelEXT ->
                 HS_vkQueueInsertDebugUtilsLabelEXT

instance VulkanProc "vkQueueInsertDebugUtilsLabelEXT" where
        type VkProcType "vkQueueInsertDebugUtilsLabelEXT" =
             HS_vkQueueInsertDebugUtilsLabelEXT
        vkProcSymbol = _VkQueueInsertDebugUtilsLabelEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkQueueInsertDebugUtilsLabelEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkCmdBeginDebugUtilsLabelEXT :: CString

pattern VkCmdBeginDebugUtilsLabelEXT <-
        (is_VkCmdBeginDebugUtilsLabelEXT -> True)
  where VkCmdBeginDebugUtilsLabelEXT = _VkCmdBeginDebugUtilsLabelEXT

{-# INLINE _VkCmdBeginDebugUtilsLabelEXT #-}

_VkCmdBeginDebugUtilsLabelEXT :: CString
_VkCmdBeginDebugUtilsLabelEXT
  = Ptr "vkCmdBeginDebugUtilsLabelEXT\NUL"#

{-# INLINE is_VkCmdBeginDebugUtilsLabelEXT #-}

is_VkCmdBeginDebugUtilsLabelEXT :: CString -> Bool
is_VkCmdBeginDebugUtilsLabelEXT
  = (EQ ==) . cmpCStrings _VkCmdBeginDebugUtilsLabelEXT

type VkCmdBeginDebugUtilsLabelEXT = "vkCmdBeginDebugUtilsLabelEXT"

-- | queues: 'graphics', 'compute'.
--
--   renderpass: @both@
--
--   > () vkCmdBeginDebugUtilsLabelEXT
--   >     ( VkCommandBuffer commandBuffer
--   >     , const VkDebugUtilsLabelEXT* pLabelInfo
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCmdBeginDebugUtilsLabelEXT vkCmdBeginDebugUtilsLabelEXT registry at www.khronos.org>
type HS_vkCmdBeginDebugUtilsLabelEXT =
     VkCommandBuffer -- ^ commandBuffer
                     -> Ptr VkDebugUtilsLabelEXT -- ^ pLabelInfo
                                                 -> IO ()

type PFN_vkCmdBeginDebugUtilsLabelEXT =
     FunPtr HS_vkCmdBeginDebugUtilsLabelEXT

foreign import ccall "dynamic" unwrapVkCmdBeginDebugUtilsLabelEXT
               ::
               PFN_vkCmdBeginDebugUtilsLabelEXT -> HS_vkCmdBeginDebugUtilsLabelEXT

instance VulkanProc "vkCmdBeginDebugUtilsLabelEXT" where
        type VkProcType "vkCmdBeginDebugUtilsLabelEXT" =
             HS_vkCmdBeginDebugUtilsLabelEXT
        vkProcSymbol = _VkCmdBeginDebugUtilsLabelEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkCmdBeginDebugUtilsLabelEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkCmdEndDebugUtilsLabelEXT :: CString

pattern VkCmdEndDebugUtilsLabelEXT <-
        (is_VkCmdEndDebugUtilsLabelEXT -> True)
  where VkCmdEndDebugUtilsLabelEXT = _VkCmdEndDebugUtilsLabelEXT

{-# INLINE _VkCmdEndDebugUtilsLabelEXT #-}

_VkCmdEndDebugUtilsLabelEXT :: CString
_VkCmdEndDebugUtilsLabelEXT = Ptr "vkCmdEndDebugUtilsLabelEXT\NUL"#

{-# INLINE is_VkCmdEndDebugUtilsLabelEXT #-}

is_VkCmdEndDebugUtilsLabelEXT :: CString -> Bool
is_VkCmdEndDebugUtilsLabelEXT
  = (EQ ==) . cmpCStrings _VkCmdEndDebugUtilsLabelEXT

type VkCmdEndDebugUtilsLabelEXT = "vkCmdEndDebugUtilsLabelEXT"

-- | queues: 'graphics', 'compute'.
--
--   renderpass: @both@
--
--   > () vkCmdEndDebugUtilsLabelEXT
--   >     ( VkCommandBuffer commandBuffer
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCmdEndDebugUtilsLabelEXT vkCmdEndDebugUtilsLabelEXT registry at www.khronos.org>
type HS_vkCmdEndDebugUtilsLabelEXT = VkCommandBuffer -- ^ commandBuffer
                                                     -> IO ()

type PFN_vkCmdEndDebugUtilsLabelEXT =
     FunPtr HS_vkCmdEndDebugUtilsLabelEXT

foreign import ccall "dynamic" unwrapVkCmdEndDebugUtilsLabelEXT ::
               PFN_vkCmdEndDebugUtilsLabelEXT -> HS_vkCmdEndDebugUtilsLabelEXT

instance VulkanProc "vkCmdEndDebugUtilsLabelEXT" where
        type VkProcType "vkCmdEndDebugUtilsLabelEXT" =
             HS_vkCmdEndDebugUtilsLabelEXT
        vkProcSymbol = _VkCmdEndDebugUtilsLabelEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkCmdEndDebugUtilsLabelEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkCmdInsertDebugUtilsLabelEXT :: CString

pattern VkCmdInsertDebugUtilsLabelEXT <-
        (is_VkCmdInsertDebugUtilsLabelEXT -> True)
  where VkCmdInsertDebugUtilsLabelEXT
          = _VkCmdInsertDebugUtilsLabelEXT

{-# INLINE _VkCmdInsertDebugUtilsLabelEXT #-}

_VkCmdInsertDebugUtilsLabelEXT :: CString
_VkCmdInsertDebugUtilsLabelEXT
  = Ptr "vkCmdInsertDebugUtilsLabelEXT\NUL"#

{-# INLINE is_VkCmdInsertDebugUtilsLabelEXT #-}

is_VkCmdInsertDebugUtilsLabelEXT :: CString -> Bool
is_VkCmdInsertDebugUtilsLabelEXT
  = (EQ ==) . cmpCStrings _VkCmdInsertDebugUtilsLabelEXT

type VkCmdInsertDebugUtilsLabelEXT =
     "vkCmdInsertDebugUtilsLabelEXT"

-- | queues: 'graphics', 'compute'.
--
--   renderpass: @both@
--
--   > () vkCmdInsertDebugUtilsLabelEXT
--   >     ( VkCommandBuffer commandBuffer
--   >     , const VkDebugUtilsLabelEXT* pLabelInfo
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCmdInsertDebugUtilsLabelEXT vkCmdInsertDebugUtilsLabelEXT registry at www.khronos.org>
type HS_vkCmdInsertDebugUtilsLabelEXT =
     VkCommandBuffer -- ^ commandBuffer
                     -> Ptr VkDebugUtilsLabelEXT -- ^ pLabelInfo
                                                 -> IO ()

type PFN_vkCmdInsertDebugUtilsLabelEXT =
     FunPtr HS_vkCmdInsertDebugUtilsLabelEXT

foreign import ccall "dynamic" unwrapVkCmdInsertDebugUtilsLabelEXT
               ::
               PFN_vkCmdInsertDebugUtilsLabelEXT ->
                 HS_vkCmdInsertDebugUtilsLabelEXT

instance VulkanProc "vkCmdInsertDebugUtilsLabelEXT" where
        type VkProcType "vkCmdInsertDebugUtilsLabelEXT" =
             HS_vkCmdInsertDebugUtilsLabelEXT
        vkProcSymbol = _VkCmdInsertDebugUtilsLabelEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkCmdInsertDebugUtilsLabelEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkCreateDebugUtilsMessengerEXT :: CString

pattern VkCreateDebugUtilsMessengerEXT <-
        (is_VkCreateDebugUtilsMessengerEXT -> True)
  where VkCreateDebugUtilsMessengerEXT
          = _VkCreateDebugUtilsMessengerEXT

{-# INLINE _VkCreateDebugUtilsMessengerEXT #-}

_VkCreateDebugUtilsMessengerEXT :: CString
_VkCreateDebugUtilsMessengerEXT
  = Ptr "vkCreateDebugUtilsMessengerEXT\NUL"#

{-# INLINE is_VkCreateDebugUtilsMessengerEXT #-}

is_VkCreateDebugUtilsMessengerEXT :: CString -> Bool
is_VkCreateDebugUtilsMessengerEXT
  = (EQ ==) . cmpCStrings _VkCreateDebugUtilsMessengerEXT

type VkCreateDebugUtilsMessengerEXT =
     "vkCreateDebugUtilsMessengerEXT"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY'.
--
--   > VkResult vkCreateDebugUtilsMessengerEXT
--   >     ( VkInstance instance
--   >     , const VkDebugUtilsMessengerCreateInfoEXT* pCreateInfo
--   >     , const VkAllocationCallbacks* pAllocator
--   >     , VkDebugUtilsMessengerEXT* pMessenger
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateDebugUtilsMessengerEXT vkCreateDebugUtilsMessengerEXT registry at www.khronos.org>
type HS_vkCreateDebugUtilsMessengerEXT =
     VkInstance -- ^ instance
                ->
       Ptr VkDebugUtilsMessengerCreateInfoEXT -- ^ pCreateInfo
                                              ->
         Ptr VkAllocationCallbacks -- ^ pAllocator
                                   ->
           Ptr VkDebugUtilsMessengerEXT -- ^ pMessenger
                                        -> IO VkResult

type PFN_vkCreateDebugUtilsMessengerEXT =
     FunPtr HS_vkCreateDebugUtilsMessengerEXT

foreign import ccall "dynamic" unwrapVkCreateDebugUtilsMessengerEXT
               ::
               PFN_vkCreateDebugUtilsMessengerEXT ->
                 HS_vkCreateDebugUtilsMessengerEXT

instance VulkanProc "vkCreateDebugUtilsMessengerEXT" where
        type VkProcType "vkCreateDebugUtilsMessengerEXT" =
             HS_vkCreateDebugUtilsMessengerEXT
        vkProcSymbol = _VkCreateDebugUtilsMessengerEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkCreateDebugUtilsMessengerEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkDestroyDebugUtilsMessengerEXT :: CString

pattern VkDestroyDebugUtilsMessengerEXT <-
        (is_VkDestroyDebugUtilsMessengerEXT -> True)
  where VkDestroyDebugUtilsMessengerEXT
          = _VkDestroyDebugUtilsMessengerEXT

{-# INLINE _VkDestroyDebugUtilsMessengerEXT #-}

_VkDestroyDebugUtilsMessengerEXT :: CString
_VkDestroyDebugUtilsMessengerEXT
  = Ptr "vkDestroyDebugUtilsMessengerEXT\NUL"#

{-# INLINE is_VkDestroyDebugUtilsMessengerEXT #-}

is_VkDestroyDebugUtilsMessengerEXT :: CString -> Bool
is_VkDestroyDebugUtilsMessengerEXT
  = (EQ ==) . cmpCStrings _VkDestroyDebugUtilsMessengerEXT

type VkDestroyDebugUtilsMessengerEXT =
     "vkDestroyDebugUtilsMessengerEXT"

-- | > () vkDestroyDebugUtilsMessengerEXT
--   >     ( VkInstance instance
--   >     , VkDebugUtilsMessengerEXT messenger
--   >     , const VkAllocationCallbacks* pAllocator
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkDestroyDebugUtilsMessengerEXT vkDestroyDebugUtilsMessengerEXT registry at www.khronos.org>
type HS_vkDestroyDebugUtilsMessengerEXT =
     VkInstance -- ^ instance
                ->
       VkDebugUtilsMessengerEXT -- ^ messenger
                                -> Ptr VkAllocationCallbacks -- ^ pAllocator
                                                             -> IO ()

type PFN_vkDestroyDebugUtilsMessengerEXT =
     FunPtr HS_vkDestroyDebugUtilsMessengerEXT

foreign import ccall "dynamic"
               unwrapVkDestroyDebugUtilsMessengerEXT ::
               PFN_vkDestroyDebugUtilsMessengerEXT ->
                 HS_vkDestroyDebugUtilsMessengerEXT

instance VulkanProc "vkDestroyDebugUtilsMessengerEXT" where
        type VkProcType "vkDestroyDebugUtilsMessengerEXT" =
             HS_vkDestroyDebugUtilsMessengerEXT
        vkProcSymbol = _VkDestroyDebugUtilsMessengerEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkDestroyDebugUtilsMessengerEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VkSubmitDebugUtilsMessageEXT :: CString

pattern VkSubmitDebugUtilsMessageEXT <-
        (is_VkSubmitDebugUtilsMessageEXT -> True)
  where VkSubmitDebugUtilsMessageEXT = _VkSubmitDebugUtilsMessageEXT

{-# INLINE _VkSubmitDebugUtilsMessageEXT #-}

_VkSubmitDebugUtilsMessageEXT :: CString
_VkSubmitDebugUtilsMessageEXT
  = Ptr "vkSubmitDebugUtilsMessageEXT\NUL"#

{-# INLINE is_VkSubmitDebugUtilsMessageEXT #-}

is_VkSubmitDebugUtilsMessageEXT :: CString -> Bool
is_VkSubmitDebugUtilsMessageEXT
  = (EQ ==) . cmpCStrings _VkSubmitDebugUtilsMessageEXT

type VkSubmitDebugUtilsMessageEXT = "vkSubmitDebugUtilsMessageEXT"

-- | > () vkSubmitDebugUtilsMessageEXT
--   >     ( VkInstance instance
--   >     , VkDebugUtilsMessageSeverityFlagBitsEXT messageSeverity
--   >     , VkDebugUtilsMessageTypeFlagsEXT messageTypes
--   >     , const VkDebugUtilsMessengerCallbackDataEXT* pCallbackData
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkSubmitDebugUtilsMessageEXT vkSubmitDebugUtilsMessageEXT registry at www.khronos.org>
type HS_vkSubmitDebugUtilsMessageEXT =
     VkInstance -- ^ instance
                ->
       VkDebugUtilsMessageSeverityFlagBitsEXT -- ^ messageSeverity
                                              ->
         VkDebugUtilsMessageTypeFlagsEXT -- ^ messageTypes
                                         ->
           Ptr VkDebugUtilsMessengerCallbackDataEXT -- ^ pCallbackData
                                                    -> IO ()

type PFN_vkSubmitDebugUtilsMessageEXT =
     FunPtr HS_vkSubmitDebugUtilsMessageEXT

foreign import ccall "dynamic" unwrapVkSubmitDebugUtilsMessageEXT
               ::
               PFN_vkSubmitDebugUtilsMessageEXT -> HS_vkSubmitDebugUtilsMessageEXT

instance VulkanProc "vkSubmitDebugUtilsMessageEXT" where
        type VkProcType "vkSubmitDebugUtilsMessageEXT" =
             HS_vkSubmitDebugUtilsMessageEXT
        vkProcSymbol = _VkSubmitDebugUtilsMessageEXT

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkSubmitDebugUtilsMessageEXT

        {-# INLINE unwrapVkProcPtr #-}

pattern VK_EXT_DEBUG_UTILS_SPEC_VERSION :: (Num a, Eq a) => a

pattern VK_EXT_DEBUG_UTILS_SPEC_VERSION = 1

type VK_EXT_DEBUG_UTILS_SPEC_VERSION = 1

pattern VK_EXT_DEBUG_UTILS_EXTENSION_NAME :: CString

pattern VK_EXT_DEBUG_UTILS_EXTENSION_NAME <-
        (is_VK_EXT_DEBUG_UTILS_EXTENSION_NAME -> True)
  where VK_EXT_DEBUG_UTILS_EXTENSION_NAME
          = _VK_EXT_DEBUG_UTILS_EXTENSION_NAME

{-# INLINE _VK_EXT_DEBUG_UTILS_EXTENSION_NAME #-}

_VK_EXT_DEBUG_UTILS_EXTENSION_NAME :: CString
_VK_EXT_DEBUG_UTILS_EXTENSION_NAME = Ptr "VK_EXT_debug_utils\NUL"#

{-# INLINE is_VK_EXT_DEBUG_UTILS_EXTENSION_NAME #-}

is_VK_EXT_DEBUG_UTILS_EXTENSION_NAME :: CString -> Bool
is_VK_EXT_DEBUG_UTILS_EXTENSION_NAME
  = (EQ ==) . cmpCStrings _VK_EXT_DEBUG_UTILS_EXTENSION_NAME

type VK_EXT_DEBUG_UTILS_EXTENSION_NAME = "VK_EXT_debug_utils"

pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_NAME_INFO_EXT =
        VkStructureType 1000128000

pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_OBJECT_TAG_INFO_EXT =
        VkStructureType 1000128001

pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT :: VkStructureType

pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_LABEL_EXT =
        VkStructureType 1000128002

pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT =
        VkStructureType 1000128003

pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT =
        VkStructureType 1000128004

-- | VkDebugUtilsMessengerEXT
pattern VK_OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT :: VkObjectType

pattern VK_OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT =
        VkObjectType 1000128000
