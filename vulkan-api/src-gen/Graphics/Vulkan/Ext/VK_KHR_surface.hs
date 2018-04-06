{-# OPTIONS_GHC -fno-warn-missing-pattern-synonym-signatures#-}
{-# OPTIONS_GHC -fno-warn-orphans#-}
{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE MagicHash                #-}
{-# LANGUAGE PatternSynonyms          #-}
{-# LANGUAGE Strict                   #-}
{-# LANGUAGE TypeFamilies             #-}
{-# LANGUAGE ViewPatterns             #-}
module Graphics.Vulkan.Ext.VK_KHR_surface
       (-- * Vulkan extension: @VK_KHR_surface@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @James Jones @cubanismo,Ian Elliott ianelliott@google.com@
        --
        -- author: @KHR@
        --
        -- type: @instance@
        --
        -- Extension number: @1@
        VkDestroySurfaceKHR, pattern VkDestroySurfaceKHR,
        HS_vkDestroySurfaceKHR, PFN_vkDestroySurfaceKHR,
        unwrapVkDestroySurfaceKHR, vkDestroySurfaceKHR,
        vkDestroySurfaceKHRSafe, VkGetPhysicalDeviceSurfaceSupportKHR,
        pattern VkGetPhysicalDeviceSurfaceSupportKHR,
        HS_vkGetPhysicalDeviceSurfaceSupportKHR,
        PFN_vkGetPhysicalDeviceSurfaceSupportKHR,
        unwrapVkGetPhysicalDeviceSurfaceSupportKHR,
        vkGetPhysicalDeviceSurfaceSupportKHR,
        vkGetPhysicalDeviceSurfaceSupportKHRSafe,
        VkGetPhysicalDeviceSurfaceCapabilitiesKHR,
        pattern VkGetPhysicalDeviceSurfaceCapabilitiesKHR,
        HS_vkGetPhysicalDeviceSurfaceCapabilitiesKHR,
        PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR,
        unwrapVkGetPhysicalDeviceSurfaceCapabilitiesKHR,
        vkGetPhysicalDeviceSurfaceCapabilitiesKHR,
        vkGetPhysicalDeviceSurfaceCapabilitiesKHRSafe,
        VkGetPhysicalDeviceSurfaceFormatsKHR,
        pattern VkGetPhysicalDeviceSurfaceFormatsKHR,
        HS_vkGetPhysicalDeviceSurfaceFormatsKHR,
        PFN_vkGetPhysicalDeviceSurfaceFormatsKHR,
        unwrapVkGetPhysicalDeviceSurfaceFormatsKHR,
        vkGetPhysicalDeviceSurfaceFormatsKHR,
        vkGetPhysicalDeviceSurfaceFormatsKHRSafe,
        VkGetPhysicalDeviceSurfacePresentModesKHR,
        pattern VkGetPhysicalDeviceSurfacePresentModesKHR,
        HS_vkGetPhysicalDeviceSurfacePresentModesKHR,
        PFN_vkGetPhysicalDeviceSurfacePresentModesKHR,
        unwrapVkGetPhysicalDeviceSurfacePresentModesKHR,
        vkGetPhysicalDeviceSurfacePresentModesKHR,
        vkGetPhysicalDeviceSurfacePresentModesKHRSafe,
        module Graphics.Vulkan.Marshal,
        module Graphics.Vulkan.Types.BaseTypes,
        module Graphics.Vulkan.Types.Enum.VkColorSpaceKHR,
        module Graphics.Vulkan.Types.Enum.VkCompositeAlphaFlagsKHR,
        module Graphics.Vulkan.Types.Enum.VkFormat,
        module Graphics.Vulkan.Types.Enum.VkImageUsageFlags,
        module Graphics.Vulkan.Types.Enum.VkInternalAllocationType,
        module Graphics.Vulkan.Types.Enum.VkPresentModeKHR,
        module Graphics.Vulkan.Types.Enum.VkResult,
        module Graphics.Vulkan.Types.Enum.VkSurfaceTransformFlagsKHR,
        module Graphics.Vulkan.Types.Enum.VkSystemAllocationScope,
        module Graphics.Vulkan.Types.Funcpointers,
        module Graphics.Vulkan.Types.Handles,
        module Graphics.Vulkan.Types.Struct.VkAllocationCallbacks,
        module Graphics.Vulkan.Types.Struct.VkExtent2D,
        module Graphics.Vulkan.Types.Struct.VkSurfaceCapabilitiesKHR,
        module Graphics.Vulkan.Types.Struct.VkSurfaceFormatKHR,
        VK_KHR_SURFACE_SPEC_VERSION, pattern VK_KHR_SURFACE_SPEC_VERSION,
        VK_KHR_SURFACE_EXTENSION_NAME,
        pattern VK_KHR_SURFACE_EXTENSION_NAME,
        pattern VK_ERROR_SURFACE_LOST_KHR,
        pattern VK_ERROR_NATIVE_WINDOW_IN_USE_KHR,
        pattern VK_COLORSPACE_SRGB_NONLINEAR_KHR,
        pattern VK_OBJECT_TYPE_SURFACE_KHR)
       where
import           GHC.Ptr                                               (Ptr (..))
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.InstanceProc                  (VulkanInstanceProc (..))
import           Graphics.Vulkan.Types.BaseTypes
import           Graphics.Vulkan.Types.Enum.VkColorSpaceKHR
import           Graphics.Vulkan.Types.Enum.VkCompositeAlphaFlagsKHR
import           Graphics.Vulkan.Types.Enum.VkFormat
import           Graphics.Vulkan.Types.Enum.VkImageUsageFlags
import           Graphics.Vulkan.Types.Enum.VkInternalAllocationType
import           Graphics.Vulkan.Types.Enum.VkObjectType               (VkObjectType (..))
import           Graphics.Vulkan.Types.Enum.VkPresentModeKHR
import           Graphics.Vulkan.Types.Enum.VkResult
import           Graphics.Vulkan.Types.Enum.VkSurfaceTransformFlagsKHR
import           Graphics.Vulkan.Types.Enum.VkSystemAllocationScope
import           Graphics.Vulkan.Types.Funcpointers
import           Graphics.Vulkan.Types.Handles
import           Graphics.Vulkan.Types.Struct.VkAllocationCallbacks
import           Graphics.Vulkan.Types.Struct.VkExtent2D
import           Graphics.Vulkan.Types.Struct.VkSurfaceCapabilitiesKHR
import           Graphics.Vulkan.Types.Struct.VkSurfaceFormatKHR

pattern VkDestroySurfaceKHR :: CString

pattern VkDestroySurfaceKHR <- (is_VkDestroySurfaceKHR -> True)
  where VkDestroySurfaceKHR = _VkDestroySurfaceKHR

{-# INLINE _VkDestroySurfaceKHR #-}

_VkDestroySurfaceKHR :: CString
_VkDestroySurfaceKHR = Ptr "vkDestroySurfaceKHR\NUL"#

{-# INLINE is_VkDestroySurfaceKHR #-}

is_VkDestroySurfaceKHR :: CString -> Bool
is_VkDestroySurfaceKHR = (EQ ==) . cmpCStrings _VkDestroySurfaceKHR

type VkDestroySurfaceKHR = "vkDestroySurfaceKHR"

-- | > () vkDestroySurfaceKHR
--   >     ( VkInstance instance
--   >     , VkSurfaceKHR surface
--   >     , const VkAllocationCallbacks* pAllocator
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkDestroySurfaceKHR.html vkDestroySurfaceKHR registry at www.khronos.org>
foreign import ccall unsafe "vkDestroySurfaceKHR"
               vkDestroySurfaceKHR ::
               VkInstance -- ^ instance
                          -> VkSurfaceKHR -- ^ surface
                                          -> Ptr VkAllocationCallbacks -- ^ pAllocator
                                                                       -> IO ()

-- | > () vkDestroySurfaceKHR
--   >     ( VkInstance instance
--   >     , VkSurfaceKHR surface
--   >     , const VkAllocationCallbacks* pAllocator
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkDestroySurfaceKHR.html vkDestroySurfaceKHR registry at www.khronos.org>
foreign import ccall safe "vkDestroySurfaceKHR"
               vkDestroySurfaceKHRSafe ::
               VkInstance -- ^ instance
                          -> VkSurfaceKHR -- ^ surface
                                          -> Ptr VkAllocationCallbacks -- ^ pAllocator
                                                                       -> IO ()

-- | > () vkDestroySurfaceKHR
--   >     ( VkInstance instance
--   >     , VkSurfaceKHR surface
--   >     , const VkAllocationCallbacks* pAllocator
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkDestroySurfaceKHR.html vkDestroySurfaceKHR registry at www.khronos.org>
type HS_vkDestroySurfaceKHR =
     VkInstance -- ^ instance
                -> VkSurfaceKHR -- ^ surface
                                -> Ptr VkAllocationCallbacks -- ^ pAllocator
                                                             -> IO ()

type PFN_vkDestroySurfaceKHR = FunPtr HS_vkDestroySurfaceKHR

foreign import ccall "dynamic" unwrapVkDestroySurfaceKHR ::
               PFN_vkDestroySurfaceKHR -> HS_vkDestroySurfaceKHR

instance VulkanInstanceProc "vkDestroySurfaceKHR" where
        type VkInstanceProcType "vkDestroySurfaceKHR" =
             HS_vkDestroySurfaceKHR
        vkInstanceProcSymbol = _VkDestroySurfaceKHR

        {-# INLINE vkInstanceProcSymbol #-}
        unwrapVkInstanceProc = unwrapVkDestroySurfaceKHR

        {-# INLINE unwrapVkInstanceProc #-}

pattern VkGetPhysicalDeviceSurfaceSupportKHR :: CString

pattern VkGetPhysicalDeviceSurfaceSupportKHR <-
        (is_VkGetPhysicalDeviceSurfaceSupportKHR -> True)
  where VkGetPhysicalDeviceSurfaceSupportKHR
          = _VkGetPhysicalDeviceSurfaceSupportKHR

{-# INLINE _VkGetPhysicalDeviceSurfaceSupportKHR #-}

_VkGetPhysicalDeviceSurfaceSupportKHR :: CString
_VkGetPhysicalDeviceSurfaceSupportKHR
  = Ptr "vkGetPhysicalDeviceSurfaceSupportKHR\NUL"#

{-# INLINE is_VkGetPhysicalDeviceSurfaceSupportKHR #-}

is_VkGetPhysicalDeviceSurfaceSupportKHR :: CString -> Bool
is_VkGetPhysicalDeviceSurfaceSupportKHR
  = (EQ ==) . cmpCStrings _VkGetPhysicalDeviceSurfaceSupportKHR

type VkGetPhysicalDeviceSurfaceSupportKHR =
     "vkGetPhysicalDeviceSurfaceSupportKHR"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetPhysicalDeviceSurfaceSupportKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , uint32_t queueFamilyIndex
--   >     , VkSurfaceKHR surface
--   >     , VkBool32* pSupported
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkGetPhysicalDeviceSurfaceSupportKHR.html vkGetPhysicalDeviceSurfaceSupportKHR registry at www.khronos.org>
foreign import ccall unsafe "vkGetPhysicalDeviceSurfaceSupportKHR"
               vkGetPhysicalDeviceSurfaceSupportKHR ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 Word32 -- ^ queueFamilyIndex
                        -> VkSurfaceKHR -- ^ surface
                                        -> Ptr VkBool32 -- ^ pSupported
                                                        -> IO VkResult

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetPhysicalDeviceSurfaceSupportKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , uint32_t queueFamilyIndex
--   >     , VkSurfaceKHR surface
--   >     , VkBool32* pSupported
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkGetPhysicalDeviceSurfaceSupportKHR.html vkGetPhysicalDeviceSurfaceSupportKHR registry at www.khronos.org>
foreign import ccall safe "vkGetPhysicalDeviceSurfaceSupportKHR"
               vkGetPhysicalDeviceSurfaceSupportKHRSafe ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 Word32 -- ^ queueFamilyIndex
                        -> VkSurfaceKHR -- ^ surface
                                        -> Ptr VkBool32 -- ^ pSupported
                                                        -> IO VkResult

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetPhysicalDeviceSurfaceSupportKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , uint32_t queueFamilyIndex
--   >     , VkSurfaceKHR surface
--   >     , VkBool32* pSupported
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkGetPhysicalDeviceSurfaceSupportKHR.html vkGetPhysicalDeviceSurfaceSupportKHR registry at www.khronos.org>
type HS_vkGetPhysicalDeviceSurfaceSupportKHR =
     VkPhysicalDevice -- ^ physicalDevice
                      ->
       Word32 -- ^ queueFamilyIndex
              -> VkSurfaceKHR -- ^ surface
                              -> Ptr VkBool32 -- ^ pSupported
                                              -> IO VkResult

type PFN_vkGetPhysicalDeviceSurfaceSupportKHR =
     FunPtr HS_vkGetPhysicalDeviceSurfaceSupportKHR

foreign import ccall "dynamic"
               unwrapVkGetPhysicalDeviceSurfaceSupportKHR ::
               PFN_vkGetPhysicalDeviceSurfaceSupportKHR ->
                 HS_vkGetPhysicalDeviceSurfaceSupportKHR

instance VulkanInstanceProc "vkGetPhysicalDeviceSurfaceSupportKHR"
         where
        type VkInstanceProcType "vkGetPhysicalDeviceSurfaceSupportKHR" =
             HS_vkGetPhysicalDeviceSurfaceSupportKHR
        vkInstanceProcSymbol = _VkGetPhysicalDeviceSurfaceSupportKHR

        {-# INLINE vkInstanceProcSymbol #-}
        unwrapVkInstanceProc = unwrapVkGetPhysicalDeviceSurfaceSupportKHR

        {-# INLINE unwrapVkInstanceProc #-}

pattern VkGetPhysicalDeviceSurfaceCapabilitiesKHR :: CString

pattern VkGetPhysicalDeviceSurfaceCapabilitiesKHR <-
        (is_VkGetPhysicalDeviceSurfaceCapabilitiesKHR -> True)
  where VkGetPhysicalDeviceSurfaceCapabilitiesKHR
          = _VkGetPhysicalDeviceSurfaceCapabilitiesKHR

{-# INLINE _VkGetPhysicalDeviceSurfaceCapabilitiesKHR #-}

_VkGetPhysicalDeviceSurfaceCapabilitiesKHR :: CString
_VkGetPhysicalDeviceSurfaceCapabilitiesKHR
  = Ptr "vkGetPhysicalDeviceSurfaceCapabilitiesKHR\NUL"#

{-# INLINE is_VkGetPhysicalDeviceSurfaceCapabilitiesKHR #-}

is_VkGetPhysicalDeviceSurfaceCapabilitiesKHR :: CString -> Bool
is_VkGetPhysicalDeviceSurfaceCapabilitiesKHR
  = (EQ ==) . cmpCStrings _VkGetPhysicalDeviceSurfaceCapabilitiesKHR

type VkGetPhysicalDeviceSurfaceCapabilitiesKHR =
     "vkGetPhysicalDeviceSurfaceCapabilitiesKHR"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetPhysicalDeviceSurfaceCapabilitiesKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkSurfaceKHR surface
--   >     , VkSurfaceCapabilitiesKHR* pSurfaceCapabilities
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkGetPhysicalDeviceSurfaceCapabilitiesKHR.html vkGetPhysicalDeviceSurfaceCapabilitiesKHR registry at www.khronos.org>
foreign import ccall unsafe
               "vkGetPhysicalDeviceSurfaceCapabilitiesKHR"
               vkGetPhysicalDeviceSurfaceCapabilitiesKHR ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 VkSurfaceKHR -- ^ surface
                              -> Ptr VkSurfaceCapabilitiesKHR -- ^ pSurfaceCapabilities
                                                              -> IO VkResult

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetPhysicalDeviceSurfaceCapabilitiesKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkSurfaceKHR surface
--   >     , VkSurfaceCapabilitiesKHR* pSurfaceCapabilities
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkGetPhysicalDeviceSurfaceCapabilitiesKHR.html vkGetPhysicalDeviceSurfaceCapabilitiesKHR registry at www.khronos.org>
foreign import ccall safe
               "vkGetPhysicalDeviceSurfaceCapabilitiesKHR"
               vkGetPhysicalDeviceSurfaceCapabilitiesKHRSafe ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 VkSurfaceKHR -- ^ surface
                              -> Ptr VkSurfaceCapabilitiesKHR -- ^ pSurfaceCapabilities
                                                              -> IO VkResult

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetPhysicalDeviceSurfaceCapabilitiesKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkSurfaceKHR surface
--   >     , VkSurfaceCapabilitiesKHR* pSurfaceCapabilities
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkGetPhysicalDeviceSurfaceCapabilitiesKHR.html vkGetPhysicalDeviceSurfaceCapabilitiesKHR registry at www.khronos.org>
type HS_vkGetPhysicalDeviceSurfaceCapabilitiesKHR =
     VkPhysicalDevice -- ^ physicalDevice
                      ->
       VkSurfaceKHR -- ^ surface
                    -> Ptr VkSurfaceCapabilitiesKHR -- ^ pSurfaceCapabilities
                                                    -> IO VkResult

type PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR =
     FunPtr HS_vkGetPhysicalDeviceSurfaceCapabilitiesKHR

foreign import ccall "dynamic"
               unwrapVkGetPhysicalDeviceSurfaceCapabilitiesKHR ::
               PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR ->
                 HS_vkGetPhysicalDeviceSurfaceCapabilitiesKHR

instance VulkanInstanceProc
           "vkGetPhysicalDeviceSurfaceCapabilitiesKHR"
         where
        type VkInstanceProcType "vkGetPhysicalDeviceSurfaceCapabilitiesKHR"
             = HS_vkGetPhysicalDeviceSurfaceCapabilitiesKHR
        vkInstanceProcSymbol = _VkGetPhysicalDeviceSurfaceCapabilitiesKHR

        {-# INLINE vkInstanceProcSymbol #-}
        unwrapVkInstanceProc
          = unwrapVkGetPhysicalDeviceSurfaceCapabilitiesKHR

        {-# INLINE unwrapVkInstanceProc #-}

pattern VkGetPhysicalDeviceSurfaceFormatsKHR :: CString

pattern VkGetPhysicalDeviceSurfaceFormatsKHR <-
        (is_VkGetPhysicalDeviceSurfaceFormatsKHR -> True)
  where VkGetPhysicalDeviceSurfaceFormatsKHR
          = _VkGetPhysicalDeviceSurfaceFormatsKHR

{-# INLINE _VkGetPhysicalDeviceSurfaceFormatsKHR #-}

_VkGetPhysicalDeviceSurfaceFormatsKHR :: CString
_VkGetPhysicalDeviceSurfaceFormatsKHR
  = Ptr "vkGetPhysicalDeviceSurfaceFormatsKHR\NUL"#

{-# INLINE is_VkGetPhysicalDeviceSurfaceFormatsKHR #-}

is_VkGetPhysicalDeviceSurfaceFormatsKHR :: CString -> Bool
is_VkGetPhysicalDeviceSurfaceFormatsKHR
  = (EQ ==) . cmpCStrings _VkGetPhysicalDeviceSurfaceFormatsKHR

type VkGetPhysicalDeviceSurfaceFormatsKHR =
     "vkGetPhysicalDeviceSurfaceFormatsKHR"

-- | Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetPhysicalDeviceSurfaceFormatsKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkSurfaceKHR surface
--   >     , uint32_t* pSurfaceFormatCount
--   >     , VkSurfaceFormatKHR* pSurfaceFormats
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkGetPhysicalDeviceSurfaceFormatsKHR.html vkGetPhysicalDeviceSurfaceFormatsKHR registry at www.khronos.org>
foreign import ccall unsafe "vkGetPhysicalDeviceSurfaceFormatsKHR"
               vkGetPhysicalDeviceSurfaceFormatsKHR ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 VkSurfaceKHR -- ^ surface
                              -> Ptr Word32 -- ^ pSurfaceFormatCount
                                            -> Ptr VkSurfaceFormatKHR -- ^ pSurfaceFormats
                                                                      -> IO VkResult

-- | Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetPhysicalDeviceSurfaceFormatsKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkSurfaceKHR surface
--   >     , uint32_t* pSurfaceFormatCount
--   >     , VkSurfaceFormatKHR* pSurfaceFormats
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkGetPhysicalDeviceSurfaceFormatsKHR.html vkGetPhysicalDeviceSurfaceFormatsKHR registry at www.khronos.org>
foreign import ccall safe "vkGetPhysicalDeviceSurfaceFormatsKHR"
               vkGetPhysicalDeviceSurfaceFormatsKHRSafe ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 VkSurfaceKHR -- ^ surface
                              -> Ptr Word32 -- ^ pSurfaceFormatCount
                                            -> Ptr VkSurfaceFormatKHR -- ^ pSurfaceFormats
                                                                      -> IO VkResult

-- | Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetPhysicalDeviceSurfaceFormatsKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkSurfaceKHR surface
--   >     , uint32_t* pSurfaceFormatCount
--   >     , VkSurfaceFormatKHR* pSurfaceFormats
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkGetPhysicalDeviceSurfaceFormatsKHR.html vkGetPhysicalDeviceSurfaceFormatsKHR registry at www.khronos.org>
type HS_vkGetPhysicalDeviceSurfaceFormatsKHR =
     VkPhysicalDevice -- ^ physicalDevice
                      ->
       VkSurfaceKHR -- ^ surface
                    -> Ptr Word32 -- ^ pSurfaceFormatCount
                                  -> Ptr VkSurfaceFormatKHR -- ^ pSurfaceFormats
                                                            -> IO VkResult

type PFN_vkGetPhysicalDeviceSurfaceFormatsKHR =
     FunPtr HS_vkGetPhysicalDeviceSurfaceFormatsKHR

foreign import ccall "dynamic"
               unwrapVkGetPhysicalDeviceSurfaceFormatsKHR ::
               PFN_vkGetPhysicalDeviceSurfaceFormatsKHR ->
                 HS_vkGetPhysicalDeviceSurfaceFormatsKHR

instance VulkanInstanceProc "vkGetPhysicalDeviceSurfaceFormatsKHR"
         where
        type VkInstanceProcType "vkGetPhysicalDeviceSurfaceFormatsKHR" =
             HS_vkGetPhysicalDeviceSurfaceFormatsKHR
        vkInstanceProcSymbol = _VkGetPhysicalDeviceSurfaceFormatsKHR

        {-# INLINE vkInstanceProcSymbol #-}
        unwrapVkInstanceProc = unwrapVkGetPhysicalDeviceSurfaceFormatsKHR

        {-# INLINE unwrapVkInstanceProc #-}

pattern VkGetPhysicalDeviceSurfacePresentModesKHR :: CString

pattern VkGetPhysicalDeviceSurfacePresentModesKHR <-
        (is_VkGetPhysicalDeviceSurfacePresentModesKHR -> True)
  where VkGetPhysicalDeviceSurfacePresentModesKHR
          = _VkGetPhysicalDeviceSurfacePresentModesKHR

{-# INLINE _VkGetPhysicalDeviceSurfacePresentModesKHR #-}

_VkGetPhysicalDeviceSurfacePresentModesKHR :: CString
_VkGetPhysicalDeviceSurfacePresentModesKHR
  = Ptr "vkGetPhysicalDeviceSurfacePresentModesKHR\NUL"#

{-# INLINE is_VkGetPhysicalDeviceSurfacePresentModesKHR #-}

is_VkGetPhysicalDeviceSurfacePresentModesKHR :: CString -> Bool
is_VkGetPhysicalDeviceSurfacePresentModesKHR
  = (EQ ==) . cmpCStrings _VkGetPhysicalDeviceSurfacePresentModesKHR

type VkGetPhysicalDeviceSurfacePresentModesKHR =
     "vkGetPhysicalDeviceSurfacePresentModesKHR"

-- | Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetPhysicalDeviceSurfacePresentModesKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkSurfaceKHR surface
--   >     , uint32_t* pPresentModeCount
--   >     , VkPresentModeKHR* pPresentModes
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkGetPhysicalDeviceSurfacePresentModesKHR.html vkGetPhysicalDeviceSurfacePresentModesKHR registry at www.khronos.org>
foreign import ccall unsafe
               "vkGetPhysicalDeviceSurfacePresentModesKHR"
               vkGetPhysicalDeviceSurfacePresentModesKHR ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 VkSurfaceKHR -- ^ surface
                              -> Ptr Word32 -- ^ pPresentModeCount
                                            -> Ptr VkPresentModeKHR -- ^ pPresentModes
                                                                    -> IO VkResult

-- | Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetPhysicalDeviceSurfacePresentModesKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkSurfaceKHR surface
--   >     , uint32_t* pPresentModeCount
--   >     , VkPresentModeKHR* pPresentModes
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkGetPhysicalDeviceSurfacePresentModesKHR.html vkGetPhysicalDeviceSurfacePresentModesKHR registry at www.khronos.org>
foreign import ccall safe
               "vkGetPhysicalDeviceSurfacePresentModesKHR"
               vkGetPhysicalDeviceSurfacePresentModesKHRSafe ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 VkSurfaceKHR -- ^ surface
                              -> Ptr Word32 -- ^ pPresentModeCount
                                            -> Ptr VkPresentModeKHR -- ^ pPresentModes
                                                                    -> IO VkResult

-- | Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetPhysicalDeviceSurfacePresentModesKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkSurfaceKHR surface
--   >     , uint32_t* pPresentModeCount
--   >     , VkPresentModeKHR* pPresentModes
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkGetPhysicalDeviceSurfacePresentModesKHR.html vkGetPhysicalDeviceSurfacePresentModesKHR registry at www.khronos.org>
type HS_vkGetPhysicalDeviceSurfacePresentModesKHR =
     VkPhysicalDevice -- ^ physicalDevice
                      ->
       VkSurfaceKHR -- ^ surface
                    -> Ptr Word32 -- ^ pPresentModeCount
                                  -> Ptr VkPresentModeKHR -- ^ pPresentModes
                                                          -> IO VkResult

type PFN_vkGetPhysicalDeviceSurfacePresentModesKHR =
     FunPtr HS_vkGetPhysicalDeviceSurfacePresentModesKHR

foreign import ccall "dynamic"
               unwrapVkGetPhysicalDeviceSurfacePresentModesKHR ::
               PFN_vkGetPhysicalDeviceSurfacePresentModesKHR ->
                 HS_vkGetPhysicalDeviceSurfacePresentModesKHR

instance VulkanInstanceProc
           "vkGetPhysicalDeviceSurfacePresentModesKHR"
         where
        type VkInstanceProcType "vkGetPhysicalDeviceSurfacePresentModesKHR"
             = HS_vkGetPhysicalDeviceSurfacePresentModesKHR
        vkInstanceProcSymbol = _VkGetPhysicalDeviceSurfacePresentModesKHR

        {-# INLINE vkInstanceProcSymbol #-}
        unwrapVkInstanceProc
          = unwrapVkGetPhysicalDeviceSurfacePresentModesKHR

        {-# INLINE unwrapVkInstanceProc #-}

pattern VK_KHR_SURFACE_SPEC_VERSION :: (Num a, Eq a) => a

pattern VK_KHR_SURFACE_SPEC_VERSION = 25

type VK_KHR_SURFACE_SPEC_VERSION = 25

pattern VK_KHR_SURFACE_EXTENSION_NAME :: CString

pattern VK_KHR_SURFACE_EXTENSION_NAME <-
        (is_VK_KHR_SURFACE_EXTENSION_NAME -> True)
  where VK_KHR_SURFACE_EXTENSION_NAME
          = _VK_KHR_SURFACE_EXTENSION_NAME

{-# INLINE _VK_KHR_SURFACE_EXTENSION_NAME #-}

_VK_KHR_SURFACE_EXTENSION_NAME :: CString
_VK_KHR_SURFACE_EXTENSION_NAME = Ptr "VK_KHR_surface\NUL"#

{-# INLINE is_VK_KHR_SURFACE_EXTENSION_NAME #-}

is_VK_KHR_SURFACE_EXTENSION_NAME :: CString -> Bool
is_VK_KHR_SURFACE_EXTENSION_NAME
  = (EQ ==) . cmpCStrings _VK_KHR_SURFACE_EXTENSION_NAME

type VK_KHR_SURFACE_EXTENSION_NAME = "VK_KHR_surface"

pattern VK_ERROR_SURFACE_LOST_KHR :: VkResult

pattern VK_ERROR_SURFACE_LOST_KHR = VkResult (-1000000000)

pattern VK_ERROR_NATIVE_WINDOW_IN_USE_KHR :: VkResult

pattern VK_ERROR_NATIVE_WINDOW_IN_USE_KHR = VkResult (-1000000001)

pattern VK_COLORSPACE_SRGB_NONLINEAR_KHR =
        VK_COLOR_SPACE_SRGB_NONLINEAR_KHR

-- | VkSurfaceKHR
pattern VK_OBJECT_TYPE_SURFACE_KHR :: VkObjectType

pattern VK_OBJECT_TYPE_SURFACE_KHR = VkObjectType 1000000000
