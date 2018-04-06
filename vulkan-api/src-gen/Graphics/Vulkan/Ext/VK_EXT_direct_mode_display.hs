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
module Graphics.Vulkan.Ext.VK_EXT_direct_mode_display
       (-- * Vulkan extension: @VK_EXT_direct_mode_display@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @James Jones @cubanismo@
        --
        -- author: @NV@
        --
        -- type: @instance@
        --
        -- Extension number: @89@
        --
        -- Required extensions: 'VK_KHR_display'.
        --

        -- ** Required extensions: 'VK_KHR_display'.
        VkReleaseDisplayEXT, pattern VkReleaseDisplayEXT,
        HS_vkReleaseDisplayEXT, PFN_vkReleaseDisplayEXT,
        unwrapVkReleaseDisplayEXT, vkReleaseDisplayEXT,
        vkReleaseDisplayEXTSafe,
        module Graphics.Vulkan.Types.Enum.VkResult,
        module Graphics.Vulkan.Types.Handles,
        VK_EXT_DIRECT_MODE_DISPLAY_SPEC_VERSION,
        pattern VK_EXT_DIRECT_MODE_DISPLAY_SPEC_VERSION,
        VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME,
        pattern VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME)
       where
import           GHC.Ptr                              (Ptr (..))
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.InstanceProc (VulkanInstanceProc (..))
import           Graphics.Vulkan.Types.Enum.VkResult
import           Graphics.Vulkan.Types.Handles

pattern VkReleaseDisplayEXT :: CString

pattern VkReleaseDisplayEXT <- (is_VkReleaseDisplayEXT -> True)
  where VkReleaseDisplayEXT = _VkReleaseDisplayEXT

{-# INLINE _VkReleaseDisplayEXT #-}

_VkReleaseDisplayEXT :: CString
_VkReleaseDisplayEXT = Ptr "vkReleaseDisplayEXT\NUL"#

{-# INLINE is_VkReleaseDisplayEXT #-}

is_VkReleaseDisplayEXT :: CString -> Bool
is_VkReleaseDisplayEXT = (EQ ==) . cmpCStrings _VkReleaseDisplayEXT

type VkReleaseDisplayEXT = "vkReleaseDisplayEXT"

-- | Success codes: 'VK_SUCCESS'.
--
--   > VkResult vkReleaseDisplayEXT
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkDisplayKHR display
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkReleaseDisplayEXT.html vkReleaseDisplayEXT registry at www.khronos.org>
foreign import ccall unsafe "vkReleaseDisplayEXT"
               vkReleaseDisplayEXT ::
               VkPhysicalDevice -- ^ physicalDevice
                                -> VkDisplayKHR -- ^ display
                                                -> IO VkResult

-- | Success codes: 'VK_SUCCESS'.
--
--   > VkResult vkReleaseDisplayEXT
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkDisplayKHR display
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkReleaseDisplayEXT.html vkReleaseDisplayEXT registry at www.khronos.org>
foreign import ccall safe "vkReleaseDisplayEXT"
               vkReleaseDisplayEXTSafe ::
               VkPhysicalDevice -- ^ physicalDevice
                                -> VkDisplayKHR -- ^ display
                                                -> IO VkResult

-- | Success codes: 'VK_SUCCESS'.
--
--   > VkResult vkReleaseDisplayEXT
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkDisplayKHR display
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/vkReleaseDisplayEXT.html vkReleaseDisplayEXT registry at www.khronos.org>
type HS_vkReleaseDisplayEXT =
     VkPhysicalDevice -- ^ physicalDevice
                      -> VkDisplayKHR -- ^ display
                                      -> IO VkResult

type PFN_vkReleaseDisplayEXT = FunPtr HS_vkReleaseDisplayEXT

foreign import ccall "dynamic" unwrapVkReleaseDisplayEXT ::
               PFN_vkReleaseDisplayEXT -> HS_vkReleaseDisplayEXT

instance VulkanInstanceProc "vkReleaseDisplayEXT" where
        type VkInstanceProcType "vkReleaseDisplayEXT" =
             HS_vkReleaseDisplayEXT
        vkInstanceProcSymbol = _VkReleaseDisplayEXT

        {-# INLINE vkInstanceProcSymbol #-}
        unwrapVkInstanceProc = unwrapVkReleaseDisplayEXT

        {-# INLINE unwrapVkInstanceProc #-}

pattern VK_EXT_DIRECT_MODE_DISPLAY_SPEC_VERSION :: (Num a, Eq a) =>
        a

pattern VK_EXT_DIRECT_MODE_DISPLAY_SPEC_VERSION = 1

type VK_EXT_DIRECT_MODE_DISPLAY_SPEC_VERSION = 1

pattern VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME :: CString

pattern VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME <-
        (is_VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME -> True)
  where VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME
          = _VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME

{-# INLINE _VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME #-}

_VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME :: CString
_VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME
  = Ptr "VK_EXT_direct_mode_display\NUL"#

{-# INLINE is_VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME #-}

is_VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME :: CString -> Bool
is_VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME
  = (EQ ==) . cmpCStrings _VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME

type VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME =
     "VK_EXT_direct_mode_display"
