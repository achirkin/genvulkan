#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE MagicHash                #-}
{-# LANGUAGE PatternSynonyms          #-}
{-# LANGUAGE Strict                   #-}
{-# LANGUAGE TypeFamilies             #-}
{-# LANGUAGE UnboxedTuples            #-}
{-# LANGUAGE ViewPatterns             #-}
module Graphics.Vulkan.Ext.VK_KHX_device_group
       (-- * Vulkan extension: @VK_KHX_device_group@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Jeff Bolz @jbolz@
        --
        -- author: @KHX@
        --
        -- type: @device@
        --
        -- Extension number: @61@
        --
        -- Required extensions: 'VK_KHX_device_group_creation'.
        --

        -- ** Required extensions: 'VK_KHX_device_group_creation'.
        VkMemoryAllocateFlagsInfoKHX(..),
        VkDeviceGroupRenderPassBeginInfoKHX(..),
        VkDeviceGroupCommandBufferBeginInfoKHX(..),
        VkDeviceGroupSubmitInfoKHX(..), VkDeviceGroupBindSparseInfoKHX(..),
        vkGetDeviceGroupPeerMemoryFeaturesKHX, vkCmdSetDeviceMaskKHX,
        vkCmdDispatchBaseKHX, VK_KHX_DEVICE_GROUP_SPEC_VERSION,
        pattern VK_KHX_DEVICE_GROUP_SPEC_VERSION,
        VK_KHX_DEVICE_GROUP_EXTENSION_NAME,
        pattern VK_KHX_DEVICE_GROUP_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO_KHX,
        pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO_KHX,
        pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO_KHX,
        pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO_KHX,
        pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO_KHX,
        pattern VK_STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHX,
        pattern VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHX,
        pattern VK_PIPELINE_CREATE_DISPATCH_BASE_KHX,
        pattern VK_DEPENDENCY_DEVICE_GROUP_BIT_KHX,
        -- ** Required extensions: 'VK_KHR_bind_memory2', 'VK_KHX_device_group_creation'.
        VkBindBufferMemoryDeviceGroupInfoKHX(..),
        VkBindImageMemoryDeviceGroupInfoKHX(..),
        pattern VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO_KHX,
        pattern VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO_KHX,
        pattern VK_IMAGE_CREATE_BIND_SFR_BIT_KHX,
        -- ** Required extensions: 'VK_KHR_surface', 'VK_KHX_device_group_creation'.
        VkDeviceGroupPresentCapabilitiesKHX(..),
        vkGetDeviceGroupPresentCapabilitiesKHX,
        vkGetDeviceGroupSurfacePresentModesKHX,
        vkGetPhysicalDevicePresentRectanglesKHX,
        pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHX,
        -- ** Required extensions: 'VK_KHR_swapchain', 'VK_KHX_device_group_creation'.
        VkImageSwapchainCreateInfoKHX(..),
        VkBindImageMemorySwapchainInfoKHX(..),
        VkAcquireNextImageInfoKHX(..), VkDeviceGroupPresentInfoKHX(..),
        VkDeviceGroupSwapchainCreateInfoKHX(..), vkAcquireNextImage2KHX,
        pattern VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHX,
        pattern VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHX,
        pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHX,
        pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHX,
        pattern VK_SWAPCHAIN_CREATE_BIND_SFR_BIT_KHX)
       where
import           Foreign.C.String                 (CString)
import           Foreign.Storable                 (Storable (..))
import           GHC.ForeignPtr                   (ForeignPtr (..),
                                                   ForeignPtrContents (..),
                                                   newForeignPtr_)
import           GHC.Prim
import           GHC.Ptr                          (Ptr (..))
import           GHC.Types                        (IO (..), Int (..))
import           Graphics.Vulkan.Base             (VkRect2D)
import           Graphics.Vulkan.Common           (VkCommandBuffer,
                                                   VkDependencyFlagBits (..),
                                                   VkDevice,
                                                   VkDeviceGroupPresentModeFlagBitsKHX,
                                                   VkDeviceGroupPresentModeFlagsKHX,
                                                   VkFence,
                                                   VkImageCreateFlagBits (..),
                                                   VkMemoryAllocateFlagsKHX,
                                                   VkPeerMemoryFeatureFlagsKHX,
                                                   VkPhysicalDevice,
                                                   VkPipelineCreateFlagBits (..),
                                                   VkResult, VkSemaphore,
                                                   VkStructureType,
                                                   VkStructureType (..),
                                                   VkSurfaceKHR,
                                                   VkSwapchainCreateFlagBitsKHR (..),
                                                   VkSwapchainKHR, Word32,
                                                   Word64)
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Internal
import           Graphics.Vulkan.StructMembers
import           System.IO.Unsafe                 (unsafeDupablePerformIO)

data VkMemoryAllocateFlagsInfoKHX = VkMemoryAllocateFlagsInfoKHX## ByteArray##

instance Eq VkMemoryAllocateFlagsInfoKHX where
        (VkMemoryAllocateFlagsInfoKHX## a) ==
          (VkMemoryAllocateFlagsInfoKHX## b) = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkMemoryAllocateFlagsInfoKHX where
        (VkMemoryAllocateFlagsInfoKHX## a) `compare`
          (VkMemoryAllocateFlagsInfoKHX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkMemoryAllocateFlagsInfoKHX where
        sizeOf ~_ = #{size VkMemoryAllocateFlagsInfoKHX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkMemoryAllocateFlagsInfoKHX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkMemoryAllocateFlagsInfoKHX),
            I## a <- alignment (undefined :: VkMemoryAllocateFlagsInfoKHX) =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkMemoryAllocateFlagsInfoKHX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkMemoryAllocateFlagsInfoKHX## ba)
          | I## n <- sizeOf (undefined :: VkMemoryAllocateFlagsInfoKHX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkMemoryAllocateFlagsInfoKHX where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkMemoryAllocateFlagsInfoKHX),
            I## a <- alignment (undefined :: VkMemoryAllocateFlagsInfoKHX) =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkMemoryAllocateFlagsInfoKHX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkMemoryAllocateFlagsInfoKHX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkMemoryAllocateFlagsInfoKHX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkMemoryAllocateFlagsInfoKHX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkMemoryAllocateFlagsInfoKHX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkMemoryAllocateFlagsInfoKHX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkMemoryAllocateFlagsInfoKHX where
        type VkSTypeMType VkMemoryAllocateFlagsInfoKHX = VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkMemoryAllocateFlagsInfoKHX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkMemoryAllocateFlagsInfoKHX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkMemoryAllocateFlagsInfoKHX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkMemoryAllocateFlagsInfoKHX, sType}

instance {-# OVERLAPPING #-}
         HasVkPNext VkMemoryAllocateFlagsInfoKHX where
        type VkPNextMType VkMemoryAllocateFlagsInfoKHX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkMemoryAllocateFlagsInfoKHX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkMemoryAllocateFlagsInfoKHX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkMemoryAllocateFlagsInfoKHX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkMemoryAllocateFlagsInfoKHX, pNext}

instance {-# OVERLAPPING #-}
         HasVkFlags VkMemoryAllocateFlagsInfoKHX where
        type VkFlagsMType VkMemoryAllocateFlagsInfoKHX =
             VkMemoryAllocateFlagsKHX

        {-# NOINLINE vkFlags #-}
        vkFlags x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkMemoryAllocateFlagsInfoKHX, flags})

        {-# INLINE vkFlagsByteOffset #-}
        vkFlagsByteOffset ~_
          = #{offset VkMemoryAllocateFlagsInfoKHX, flags}

        {-# INLINE readVkFlags #-}
        readVkFlags p
          = peekByteOff p #{offset VkMemoryAllocateFlagsInfoKHX, flags}

        {-# INLINE writeVkFlags #-}
        writeVkFlags p
          = pokeByteOff p #{offset VkMemoryAllocateFlagsInfoKHX, flags}

instance {-# OVERLAPPING #-}
         HasVkDeviceMask VkMemoryAllocateFlagsInfoKHX where
        type VkDeviceMaskMType VkMemoryAllocateFlagsInfoKHX = Word32

        {-# NOINLINE vkDeviceMask #-}
        vkDeviceMask x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkMemoryAllocateFlagsInfoKHX, deviceMask})

        {-# INLINE vkDeviceMaskByteOffset #-}
        vkDeviceMaskByteOffset ~_
          = #{offset VkMemoryAllocateFlagsInfoKHX, deviceMask}

        {-# INLINE readVkDeviceMask #-}
        readVkDeviceMask p
          = peekByteOff p #{offset VkMemoryAllocateFlagsInfoKHX, deviceMask}

        {-# INLINE writeVkDeviceMask #-}
        writeVkDeviceMask p
          = pokeByteOff p #{offset VkMemoryAllocateFlagsInfoKHX, deviceMask}

instance Show VkMemoryAllocateFlagsInfoKHX where
        showsPrec d x
          = showString "VkMemoryAllocateFlagsInfoKHX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkFlags = " .
                            showsPrec d (vkFlags x) .
                              showString ", " .
                                showString "vkDeviceMask = " .
                                  showsPrec d (vkDeviceMask x) . showChar '}'

data VkDeviceGroupRenderPassBeginInfoKHX = VkDeviceGroupRenderPassBeginInfoKHX## ByteArray##

instance Eq VkDeviceGroupRenderPassBeginInfoKHX where
        (VkDeviceGroupRenderPassBeginInfoKHX## a) ==
          (VkDeviceGroupRenderPassBeginInfoKHX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkDeviceGroupRenderPassBeginInfoKHX where
        (VkDeviceGroupRenderPassBeginInfoKHX## a) `compare`
          (VkDeviceGroupRenderPassBeginInfoKHX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkDeviceGroupRenderPassBeginInfoKHX where
        sizeOf ~_ = #{size VkDeviceGroupRenderPassBeginInfoKHX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkDeviceGroupRenderPassBeginInfoKHX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf
                      (undefined :: VkDeviceGroupRenderPassBeginInfoKHX),
            I## a <- alignment
                      (undefined :: VkDeviceGroupRenderPassBeginInfoKHX)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkDeviceGroupRenderPassBeginInfoKHX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkDeviceGroupRenderPassBeginInfoKHX## ba)
          | I## n <- sizeOf (undefined :: VkDeviceGroupRenderPassBeginInfoKHX)
            = IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkDeviceGroupRenderPassBeginInfoKHX where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf
                      (undefined :: VkDeviceGroupRenderPassBeginInfoKHX),
            I## a <- alignment
                      (undefined :: VkDeviceGroupRenderPassBeginInfoKHX)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkDeviceGroupRenderPassBeginInfoKHX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkDeviceGroupRenderPassBeginInfoKHX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr
          = fromForeignPtr## VkDeviceGroupRenderPassBeginInfoKHX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkDeviceGroupRenderPassBeginInfoKHX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkDeviceGroupRenderPassBeginInfoKHX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkDeviceGroupRenderPassBeginInfoKHX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkDeviceGroupRenderPassBeginInfoKHX where
        type VkSTypeMType VkDeviceGroupRenderPassBeginInfoKHX =
             VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupRenderPassBeginInfoKHX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkDeviceGroupRenderPassBeginInfoKHX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkDeviceGroupRenderPassBeginInfoKHX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkDeviceGroupRenderPassBeginInfoKHX, sType}

instance {-# OVERLAPPING #-}
         HasVkPNext VkDeviceGroupRenderPassBeginInfoKHX where
        type VkPNextMType VkDeviceGroupRenderPassBeginInfoKHX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupRenderPassBeginInfoKHX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkDeviceGroupRenderPassBeginInfoKHX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkDeviceGroupRenderPassBeginInfoKHX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkDeviceGroupRenderPassBeginInfoKHX, pNext}

instance {-# OVERLAPPING #-}
         HasVkDeviceMask VkDeviceGroupRenderPassBeginInfoKHX where
        type VkDeviceMaskMType VkDeviceGroupRenderPassBeginInfoKHX = Word32

        {-# NOINLINE vkDeviceMask #-}
        vkDeviceMask x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupRenderPassBeginInfoKHX, deviceMask})

        {-# INLINE vkDeviceMaskByteOffset #-}
        vkDeviceMaskByteOffset ~_
          = #{offset VkDeviceGroupRenderPassBeginInfoKHX, deviceMask}

        {-# INLINE readVkDeviceMask #-}
        readVkDeviceMask p
          = peekByteOff p #{offset VkDeviceGroupRenderPassBeginInfoKHX, deviceMask}

        {-# INLINE writeVkDeviceMask #-}
        writeVkDeviceMask p
          = pokeByteOff p #{offset VkDeviceGroupRenderPassBeginInfoKHX, deviceMask}

instance {-# OVERLAPPING #-}
         HasVkDeviceRenderAreaCount VkDeviceGroupRenderPassBeginInfoKHX
         where
        type VkDeviceRenderAreaCountMType
               VkDeviceGroupRenderPassBeginInfoKHX
             = Word32

        {-# NOINLINE vkDeviceRenderAreaCount #-}
        vkDeviceRenderAreaCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupRenderPassBeginInfoKHX, deviceRenderAreaCount})

        {-# INLINE vkDeviceRenderAreaCountByteOffset #-}
        vkDeviceRenderAreaCountByteOffset ~_
          = #{offset VkDeviceGroupRenderPassBeginInfoKHX, deviceRenderAreaCount}

        {-# INLINE readVkDeviceRenderAreaCount #-}
        readVkDeviceRenderAreaCount p
          = peekByteOff p #{offset VkDeviceGroupRenderPassBeginInfoKHX, deviceRenderAreaCount}

        {-# INLINE writeVkDeviceRenderAreaCount #-}
        writeVkDeviceRenderAreaCount p
          = pokeByteOff p #{offset VkDeviceGroupRenderPassBeginInfoKHX, deviceRenderAreaCount}

instance {-# OVERLAPPING #-}
         HasVkPDeviceRenderAreas VkDeviceGroupRenderPassBeginInfoKHX where
        type VkPDeviceRenderAreasMType VkDeviceGroupRenderPassBeginInfoKHX
             = Ptr VkRect2D

        {-# NOINLINE vkPDeviceRenderAreas #-}
        vkPDeviceRenderAreas x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupRenderPassBeginInfoKHX, pDeviceRenderAreas})

        {-# INLINE vkPDeviceRenderAreasByteOffset #-}
        vkPDeviceRenderAreasByteOffset ~_
          = #{offset VkDeviceGroupRenderPassBeginInfoKHX, pDeviceRenderAreas}

        {-# INLINE readVkPDeviceRenderAreas #-}
        readVkPDeviceRenderAreas p
          = peekByteOff p #{offset VkDeviceGroupRenderPassBeginInfoKHX, pDeviceRenderAreas}

        {-# INLINE writeVkPDeviceRenderAreas #-}
        writeVkPDeviceRenderAreas p
          = pokeByteOff p #{offset VkDeviceGroupRenderPassBeginInfoKHX, pDeviceRenderAreas}

instance Show VkDeviceGroupRenderPassBeginInfoKHX where
        showsPrec d x
          = showString "VkDeviceGroupRenderPassBeginInfoKHX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkDeviceMask = " .
                            showsPrec d (vkDeviceMask x) .
                              showString ", " .
                                showString "vkDeviceRenderAreaCount = " .
                                  showsPrec d (vkDeviceRenderAreaCount x) .
                                    showString ", " .
                                      showString "vkPDeviceRenderAreas = " .
                                        showsPrec d (vkPDeviceRenderAreas x) . showChar '}'

data VkDeviceGroupCommandBufferBeginInfoKHX = VkDeviceGroupCommandBufferBeginInfoKHX## ByteArray##

instance Eq VkDeviceGroupCommandBufferBeginInfoKHX where
        (VkDeviceGroupCommandBufferBeginInfoKHX## a) ==
          (VkDeviceGroupCommandBufferBeginInfoKHX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkDeviceGroupCommandBufferBeginInfoKHX where
        (VkDeviceGroupCommandBufferBeginInfoKHX## a) `compare`
          (VkDeviceGroupCommandBufferBeginInfoKHX## b)
          = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkDeviceGroupCommandBufferBeginInfoKHX where
        sizeOf ~_
          = #{size VkDeviceGroupCommandBufferBeginInfoKHX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkDeviceGroupCommandBufferBeginInfoKHX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf
                      (undefined :: VkDeviceGroupCommandBufferBeginInfoKHX),
            I## a <- alignment
                      (undefined :: VkDeviceGroupCommandBufferBeginInfoKHX)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkDeviceGroupCommandBufferBeginInfoKHX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkDeviceGroupCommandBufferBeginInfoKHX## ba)
          | I## n <- sizeOf
                      (undefined :: VkDeviceGroupCommandBufferBeginInfoKHX)
            = IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkDeviceGroupCommandBufferBeginInfoKHX where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf
                      (undefined :: VkDeviceGroupCommandBufferBeginInfoKHX),
            I## a <- alignment
                      (undefined :: VkDeviceGroupCommandBufferBeginInfoKHX)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkDeviceGroupCommandBufferBeginInfoKHX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkDeviceGroupCommandBufferBeginInfoKHX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr
          = fromForeignPtr## VkDeviceGroupCommandBufferBeginInfoKHX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkDeviceGroupCommandBufferBeginInfoKHX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkDeviceGroupCommandBufferBeginInfoKHX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkDeviceGroupCommandBufferBeginInfoKHX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkDeviceGroupCommandBufferBeginInfoKHX where
        type VkSTypeMType VkDeviceGroupCommandBufferBeginInfoKHX =
             VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupCommandBufferBeginInfoKHX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkDeviceGroupCommandBufferBeginInfoKHX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkDeviceGroupCommandBufferBeginInfoKHX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkDeviceGroupCommandBufferBeginInfoKHX, sType}

instance {-# OVERLAPPING #-}
         HasVkPNext VkDeviceGroupCommandBufferBeginInfoKHX where
        type VkPNextMType VkDeviceGroupCommandBufferBeginInfoKHX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupCommandBufferBeginInfoKHX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkDeviceGroupCommandBufferBeginInfoKHX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkDeviceGroupCommandBufferBeginInfoKHX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkDeviceGroupCommandBufferBeginInfoKHX, pNext}

instance {-# OVERLAPPING #-}
         HasVkDeviceMask VkDeviceGroupCommandBufferBeginInfoKHX where
        type VkDeviceMaskMType VkDeviceGroupCommandBufferBeginInfoKHX =
             Word32

        {-# NOINLINE vkDeviceMask #-}
        vkDeviceMask x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupCommandBufferBeginInfoKHX, deviceMask})

        {-# INLINE vkDeviceMaskByteOffset #-}
        vkDeviceMaskByteOffset ~_
          = #{offset VkDeviceGroupCommandBufferBeginInfoKHX, deviceMask}

        {-# INLINE readVkDeviceMask #-}
        readVkDeviceMask p
          = peekByteOff p #{offset VkDeviceGroupCommandBufferBeginInfoKHX, deviceMask}

        {-# INLINE writeVkDeviceMask #-}
        writeVkDeviceMask p
          = pokeByteOff p #{offset VkDeviceGroupCommandBufferBeginInfoKHX, deviceMask}

instance Show VkDeviceGroupCommandBufferBeginInfoKHX where
        showsPrec d x
          = showString "VkDeviceGroupCommandBufferBeginInfoKHX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkDeviceMask = " .
                            showsPrec d (vkDeviceMask x) . showChar '}'

data VkDeviceGroupSubmitInfoKHX = VkDeviceGroupSubmitInfoKHX## ByteArray##

instance Eq VkDeviceGroupSubmitInfoKHX where
        (VkDeviceGroupSubmitInfoKHX## a) == (VkDeviceGroupSubmitInfoKHX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkDeviceGroupSubmitInfoKHX where
        (VkDeviceGroupSubmitInfoKHX## a) `compare`
          (VkDeviceGroupSubmitInfoKHX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkDeviceGroupSubmitInfoKHX where
        sizeOf ~_ = #{size VkDeviceGroupSubmitInfoKHX}

        {-# INLINE sizeOf #-}
        alignment ~_ = #{alignment VkDeviceGroupSubmitInfoKHX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkDeviceGroupSubmitInfoKHX),
            I## a <- alignment (undefined :: VkDeviceGroupSubmitInfoKHX) =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkDeviceGroupSubmitInfoKHX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkDeviceGroupSubmitInfoKHX## ba)
          | I## n <- sizeOf (undefined :: VkDeviceGroupSubmitInfoKHX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkDeviceGroupSubmitInfoKHX where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkDeviceGroupSubmitInfoKHX),
            I## a <- alignment (undefined :: VkDeviceGroupSubmitInfoKHX) =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkDeviceGroupSubmitInfoKHX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkDeviceGroupSubmitInfoKHX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkDeviceGroupSubmitInfoKHX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkDeviceGroupSubmitInfoKHX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkDeviceGroupSubmitInfoKHX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkDeviceGroupSubmitInfoKHX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-} HasVkSType VkDeviceGroupSubmitInfoKHX
         where
        type VkSTypeMType VkDeviceGroupSubmitInfoKHX = VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupSubmitInfoKHX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkDeviceGroupSubmitInfoKHX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkDeviceGroupSubmitInfoKHX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkDeviceGroupSubmitInfoKHX, sType}

instance {-# OVERLAPPING #-} HasVkPNext VkDeviceGroupSubmitInfoKHX
         where
        type VkPNextMType VkDeviceGroupSubmitInfoKHX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupSubmitInfoKHX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkDeviceGroupSubmitInfoKHX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkDeviceGroupSubmitInfoKHX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkDeviceGroupSubmitInfoKHX, pNext}

instance {-# OVERLAPPING #-}
         HasVkWaitSemaphoreCount VkDeviceGroupSubmitInfoKHX where
        type VkWaitSemaphoreCountMType VkDeviceGroupSubmitInfoKHX = Word32

        {-# NOINLINE vkWaitSemaphoreCount #-}
        vkWaitSemaphoreCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupSubmitInfoKHX, waitSemaphoreCount})

        {-# INLINE vkWaitSemaphoreCountByteOffset #-}
        vkWaitSemaphoreCountByteOffset ~_
          = #{offset VkDeviceGroupSubmitInfoKHX, waitSemaphoreCount}

        {-# INLINE readVkWaitSemaphoreCount #-}
        readVkWaitSemaphoreCount p
          = peekByteOff p #{offset VkDeviceGroupSubmitInfoKHX, waitSemaphoreCount}

        {-# INLINE writeVkWaitSemaphoreCount #-}
        writeVkWaitSemaphoreCount p
          = pokeByteOff p #{offset VkDeviceGroupSubmitInfoKHX, waitSemaphoreCount}

instance {-# OVERLAPPING #-}
         HasVkPWaitSemaphoreDeviceIndices VkDeviceGroupSubmitInfoKHX where
        type VkPWaitSemaphoreDeviceIndicesMType VkDeviceGroupSubmitInfoKHX
             = Ptr Word32

        {-# NOINLINE vkPWaitSemaphoreDeviceIndices #-}
        vkPWaitSemaphoreDeviceIndices x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupSubmitInfoKHX, pWaitSemaphoreDeviceIndices})

        {-# INLINE vkPWaitSemaphoreDeviceIndicesByteOffset #-}
        vkPWaitSemaphoreDeviceIndicesByteOffset ~_
          = #{offset VkDeviceGroupSubmitInfoKHX, pWaitSemaphoreDeviceIndices}

        {-# INLINE readVkPWaitSemaphoreDeviceIndices #-}
        readVkPWaitSemaphoreDeviceIndices p
          = peekByteOff p #{offset VkDeviceGroupSubmitInfoKHX, pWaitSemaphoreDeviceIndices}

        {-# INLINE writeVkPWaitSemaphoreDeviceIndices #-}
        writeVkPWaitSemaphoreDeviceIndices p
          = pokeByteOff p #{offset VkDeviceGroupSubmitInfoKHX, pWaitSemaphoreDeviceIndices}

instance {-# OVERLAPPING #-}
         HasVkCommandBufferCount VkDeviceGroupSubmitInfoKHX where
        type VkCommandBufferCountMType VkDeviceGroupSubmitInfoKHX = Word32

        {-# NOINLINE vkCommandBufferCount #-}
        vkCommandBufferCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupSubmitInfoKHX, commandBufferCount})

        {-# INLINE vkCommandBufferCountByteOffset #-}
        vkCommandBufferCountByteOffset ~_
          = #{offset VkDeviceGroupSubmitInfoKHX, commandBufferCount}

        {-# INLINE readVkCommandBufferCount #-}
        readVkCommandBufferCount p
          = peekByteOff p #{offset VkDeviceGroupSubmitInfoKHX, commandBufferCount}

        {-# INLINE writeVkCommandBufferCount #-}
        writeVkCommandBufferCount p
          = pokeByteOff p #{offset VkDeviceGroupSubmitInfoKHX, commandBufferCount}

instance {-# OVERLAPPING #-}
         HasVkPCommandBufferDeviceMasks VkDeviceGroupSubmitInfoKHX where
        type VkPCommandBufferDeviceMasksMType VkDeviceGroupSubmitInfoKHX =
             Ptr Word32

        {-# NOINLINE vkPCommandBufferDeviceMasks #-}
        vkPCommandBufferDeviceMasks x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupSubmitInfoKHX, pCommandBufferDeviceMasks})

        {-# INLINE vkPCommandBufferDeviceMasksByteOffset #-}
        vkPCommandBufferDeviceMasksByteOffset ~_
          = #{offset VkDeviceGroupSubmitInfoKHX, pCommandBufferDeviceMasks}

        {-# INLINE readVkPCommandBufferDeviceMasks #-}
        readVkPCommandBufferDeviceMasks p
          = peekByteOff p #{offset VkDeviceGroupSubmitInfoKHX, pCommandBufferDeviceMasks}

        {-# INLINE writeVkPCommandBufferDeviceMasks #-}
        writeVkPCommandBufferDeviceMasks p
          = pokeByteOff p #{offset VkDeviceGroupSubmitInfoKHX, pCommandBufferDeviceMasks}

instance {-# OVERLAPPING #-}
         HasVkSignalSemaphoreCount VkDeviceGroupSubmitInfoKHX where
        type VkSignalSemaphoreCountMType VkDeviceGroupSubmitInfoKHX =
             Word32

        {-# NOINLINE vkSignalSemaphoreCount #-}
        vkSignalSemaphoreCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupSubmitInfoKHX, signalSemaphoreCount})

        {-# INLINE vkSignalSemaphoreCountByteOffset #-}
        vkSignalSemaphoreCountByteOffset ~_
          = #{offset VkDeviceGroupSubmitInfoKHX, signalSemaphoreCount}

        {-# INLINE readVkSignalSemaphoreCount #-}
        readVkSignalSemaphoreCount p
          = peekByteOff p #{offset VkDeviceGroupSubmitInfoKHX, signalSemaphoreCount}

        {-# INLINE writeVkSignalSemaphoreCount #-}
        writeVkSignalSemaphoreCount p
          = pokeByteOff p #{offset VkDeviceGroupSubmitInfoKHX, signalSemaphoreCount}

instance {-# OVERLAPPING #-}
         HasVkPSignalSemaphoreDeviceIndices VkDeviceGroupSubmitInfoKHX where
        type VkPSignalSemaphoreDeviceIndicesMType
               VkDeviceGroupSubmitInfoKHX
             = Ptr Word32

        {-# NOINLINE vkPSignalSemaphoreDeviceIndices #-}
        vkPSignalSemaphoreDeviceIndices x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupSubmitInfoKHX, pSignalSemaphoreDeviceIndices})

        {-# INLINE vkPSignalSemaphoreDeviceIndicesByteOffset #-}
        vkPSignalSemaphoreDeviceIndicesByteOffset ~_
          = #{offset VkDeviceGroupSubmitInfoKHX, pSignalSemaphoreDeviceIndices}

        {-# INLINE readVkPSignalSemaphoreDeviceIndices #-}
        readVkPSignalSemaphoreDeviceIndices p
          = peekByteOff p #{offset VkDeviceGroupSubmitInfoKHX, pSignalSemaphoreDeviceIndices}

        {-# INLINE writeVkPSignalSemaphoreDeviceIndices #-}
        writeVkPSignalSemaphoreDeviceIndices p
          = pokeByteOff p #{offset VkDeviceGroupSubmitInfoKHX, pSignalSemaphoreDeviceIndices}

instance Show VkDeviceGroupSubmitInfoKHX where
        showsPrec d x
          = showString "VkDeviceGroupSubmitInfoKHX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkWaitSemaphoreCount = " .
                            showsPrec d (vkWaitSemaphoreCount x) .
                              showString ", " .
                                showString "vkPWaitSemaphoreDeviceIndices = " .
                                  showsPrec d (vkPWaitSemaphoreDeviceIndices x) .
                                    showString ", " .
                                      showString "vkCommandBufferCount = " .
                                        showsPrec d (vkCommandBufferCount x) .
                                          showString ", " .
                                            showString "vkPCommandBufferDeviceMasks = " .
                                              showsPrec d (vkPCommandBufferDeviceMasks x) .
                                                showString ", " .
                                                  showString "vkSignalSemaphoreCount = " .
                                                    showsPrec d (vkSignalSemaphoreCount x) .
                                                      showString ", " .
                                                        showString
                                                          "vkPSignalSemaphoreDeviceIndices = "
                                                          .
                                                          showsPrec d
                                                            (vkPSignalSemaphoreDeviceIndices x)
                                                            . showChar '}'

data VkDeviceGroupBindSparseInfoKHX = VkDeviceGroupBindSparseInfoKHX## ByteArray##

instance Eq VkDeviceGroupBindSparseInfoKHX where
        (VkDeviceGroupBindSparseInfoKHX## a) ==
          (VkDeviceGroupBindSparseInfoKHX## b) = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkDeviceGroupBindSparseInfoKHX where
        (VkDeviceGroupBindSparseInfoKHX## a) `compare`
          (VkDeviceGroupBindSparseInfoKHX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkDeviceGroupBindSparseInfoKHX where
        sizeOf ~_ = #{size VkDeviceGroupBindSparseInfoKHX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkDeviceGroupBindSparseInfoKHX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkDeviceGroupBindSparseInfoKHX),
            I## a <- alignment (undefined :: VkDeviceGroupBindSparseInfoKHX) =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkDeviceGroupBindSparseInfoKHX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkDeviceGroupBindSparseInfoKHX## ba)
          | I## n <- sizeOf (undefined :: VkDeviceGroupBindSparseInfoKHX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkDeviceGroupBindSparseInfoKHX where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkDeviceGroupBindSparseInfoKHX),
            I## a <- alignment (undefined :: VkDeviceGroupBindSparseInfoKHX) =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkDeviceGroupBindSparseInfoKHX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkDeviceGroupBindSparseInfoKHX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkDeviceGroupBindSparseInfoKHX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkDeviceGroupBindSparseInfoKHX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkDeviceGroupBindSparseInfoKHX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkDeviceGroupBindSparseInfoKHX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkDeviceGroupBindSparseInfoKHX where
        type VkSTypeMType VkDeviceGroupBindSparseInfoKHX = VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupBindSparseInfoKHX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkDeviceGroupBindSparseInfoKHX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkDeviceGroupBindSparseInfoKHX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkDeviceGroupBindSparseInfoKHX, sType}

instance {-# OVERLAPPING #-}
         HasVkPNext VkDeviceGroupBindSparseInfoKHX where
        type VkPNextMType VkDeviceGroupBindSparseInfoKHX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupBindSparseInfoKHX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkDeviceGroupBindSparseInfoKHX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkDeviceGroupBindSparseInfoKHX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkDeviceGroupBindSparseInfoKHX, pNext}

instance {-# OVERLAPPING #-}
         HasVkResourceDeviceIndex VkDeviceGroupBindSparseInfoKHX where
        type VkResourceDeviceIndexMType VkDeviceGroupBindSparseInfoKHX =
             Word32

        {-# NOINLINE vkResourceDeviceIndex #-}
        vkResourceDeviceIndex x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupBindSparseInfoKHX, resourceDeviceIndex})

        {-# INLINE vkResourceDeviceIndexByteOffset #-}
        vkResourceDeviceIndexByteOffset ~_
          = #{offset VkDeviceGroupBindSparseInfoKHX, resourceDeviceIndex}

        {-# INLINE readVkResourceDeviceIndex #-}
        readVkResourceDeviceIndex p
          = peekByteOff p #{offset VkDeviceGroupBindSparseInfoKHX, resourceDeviceIndex}

        {-# INLINE writeVkResourceDeviceIndex #-}
        writeVkResourceDeviceIndex p
          = pokeByteOff p #{offset VkDeviceGroupBindSparseInfoKHX, resourceDeviceIndex}

instance {-# OVERLAPPING #-}
         HasVkMemoryDeviceIndex VkDeviceGroupBindSparseInfoKHX where
        type VkMemoryDeviceIndexMType VkDeviceGroupBindSparseInfoKHX =
             Word32

        {-# NOINLINE vkMemoryDeviceIndex #-}
        vkMemoryDeviceIndex x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupBindSparseInfoKHX, memoryDeviceIndex})

        {-# INLINE vkMemoryDeviceIndexByteOffset #-}
        vkMemoryDeviceIndexByteOffset ~_
          = #{offset VkDeviceGroupBindSparseInfoKHX, memoryDeviceIndex}

        {-# INLINE readVkMemoryDeviceIndex #-}
        readVkMemoryDeviceIndex p
          = peekByteOff p #{offset VkDeviceGroupBindSparseInfoKHX, memoryDeviceIndex}

        {-# INLINE writeVkMemoryDeviceIndex #-}
        writeVkMemoryDeviceIndex p
          = pokeByteOff p #{offset VkDeviceGroupBindSparseInfoKHX, memoryDeviceIndex}

instance Show VkDeviceGroupBindSparseInfoKHX where
        showsPrec d x
          = showString "VkDeviceGroupBindSparseInfoKHX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkResourceDeviceIndex = " .
                            showsPrec d (vkResourceDeviceIndex x) .
                              showString ", " .
                                showString "vkMemoryDeviceIndex = " .
                                  showsPrec d (vkMemoryDeviceIndex x) . showChar '}'

-- | > void vkGetDeviceGroupPeerMemoryFeaturesKHX
--   >     ( VkDevice device
--   >     , uint32_t heapIndex
--   >     , uint32_t localDeviceIndex
--   >     , uint32_t remoteDeviceIndex
--   >     , VkPeerMemoryFeatureFlagsKHX* pPeerMemoryFeatures
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkGetDeviceGroupPeerMemoryFeaturesKHX.html vkGetDeviceGroupPeerMemoryFeaturesKHX registry at www.khronos.org>
foreign import ccall unsafe "vkGetDeviceGroupPeerMemoryFeaturesKHX"
               vkGetDeviceGroupPeerMemoryFeaturesKHX ::
               VkDevice -- ^ device
                        ->
                 Word32 -- ^ heapIndex
                        ->
                   Word32 -- ^ localDeviceIndex
                          -> Word32 -- ^ remoteDeviceIndex
                                    -> Ptr VkPeerMemoryFeatureFlagsKHX -- ^ pPeerMemoryFeatures
                                                                       -> IO ()

-- | queues: @graphics,compute,transfer@
--
--   renderpass: @both@
--
--   > void vkCmdSetDeviceMaskKHX
--   >     ( VkCommandBuffer commandBuffer
--   >     , uint32_t deviceMask
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkCmdSetDeviceMaskKHX.html vkCmdSetDeviceMaskKHX registry at www.khronos.org>
foreign import ccall unsafe "vkCmdSetDeviceMaskKHX"
               vkCmdSetDeviceMaskKHX :: VkCommandBuffer -- ^ commandBuffer
                                                        -> Word32 -- ^ deviceMask
                                                                  -> IO ()

-- | queues: @compute@
--
--   renderpass: @outside@
--
--   > void vkCmdDispatchBaseKHX
--   >     ( VkCommandBuffer commandBuffer
--   >     , uint32_t baseGroupX
--   >     , uint32_t baseGroupY
--   >     , uint32_t baseGroupZ
--   >     , uint32_t groupCountX
--   >     , uint32_t groupCountY
--   >     , uint32_t groupCountZ
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkCmdDispatchBaseKHX.html vkCmdDispatchBaseKHX registry at www.khronos.org>
foreign import ccall unsafe "vkCmdDispatchBaseKHX"
               vkCmdDispatchBaseKHX ::
               VkCommandBuffer -- ^ commandBuffer
                               ->
                 Word32 -- ^ baseGroupX
                        -> Word32 -- ^ baseGroupY
                                  -> Word32 -- ^ baseGroupZ
                                            -> Word32 -- ^ groupCountX
                                                      -> Word32 -- ^ groupCountY
                                                                -> Word32 -- ^ groupCountZ
                                                                          -> IO ()

pattern VK_KHX_DEVICE_GROUP_SPEC_VERSION :: (Num a, Eq a) => a

pattern VK_KHX_DEVICE_GROUP_SPEC_VERSION = 2

type VK_KHX_DEVICE_GROUP_SPEC_VERSION = 2

pattern VK_KHX_DEVICE_GROUP_EXTENSION_NAME :: CString

pattern VK_KHX_DEVICE_GROUP_EXTENSION_NAME <-
        (is_VK_KHX_DEVICE_GROUP_EXTENSION_NAME -> True)
  where VK_KHX_DEVICE_GROUP_EXTENSION_NAME
          = _VK_KHX_DEVICE_GROUP_EXTENSION_NAME

_VK_KHX_DEVICE_GROUP_EXTENSION_NAME :: CString

{-# INLINE _VK_KHX_DEVICE_GROUP_EXTENSION_NAME #-}
_VK_KHX_DEVICE_GROUP_EXTENSION_NAME
  = Ptr "VK_KHX_device_group\NUL"##

is_VK_KHX_DEVICE_GROUP_EXTENSION_NAME :: CString -> Bool

{-# INLINE is_VK_KHX_DEVICE_GROUP_EXTENSION_NAME #-}
is_VK_KHX_DEVICE_GROUP_EXTENSION_NAME
  = (_VK_KHX_DEVICE_GROUP_EXTENSION_NAME ==)

type VK_KHX_DEVICE_GROUP_EXTENSION_NAME = "VK_KHX_device_group"

pattern VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO_KHX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_FLAGS_INFO_KHX =
        VkStructureType 1000060000

pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO_KHX
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_RENDER_PASS_BEGIN_INFO_KHX =
        VkStructureType 1000060003

pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO_KHX
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_COMMAND_BUFFER_BEGIN_INFO_KHX
        = VkStructureType 1000060004

pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO_KHX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_SUBMIT_INFO_KHX =
        VkStructureType 1000060005

pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO_KHX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_BIND_SPARSE_INFO_KHX =
        VkStructureType 1000060006

pattern VK_STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHX =
        VkStructureType 1000060010

-- | bitpos = @3@
pattern VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHX ::
        VkPipelineCreateFlagBits

pattern VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHX =
        VkPipelineCreateFlagBits 8

-- | bitpos = @4@
pattern VK_PIPELINE_CREATE_DISPATCH_BASE_KHX ::
        VkPipelineCreateFlagBits

pattern VK_PIPELINE_CREATE_DISPATCH_BASE_KHX =
        VkPipelineCreateFlagBits 16

-- | Dependency is across devices
--
--   bitpos = @2@
pattern VK_DEPENDENCY_DEVICE_GROUP_BIT_KHX :: VkDependencyFlagBits

pattern VK_DEPENDENCY_DEVICE_GROUP_BIT_KHX = VkDependencyFlagBits 4

data VkBindBufferMemoryDeviceGroupInfoKHX = VkBindBufferMemoryDeviceGroupInfoKHX## ByteArray##

instance Eq VkBindBufferMemoryDeviceGroupInfoKHX where
        (VkBindBufferMemoryDeviceGroupInfoKHX## a) ==
          (VkBindBufferMemoryDeviceGroupInfoKHX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkBindBufferMemoryDeviceGroupInfoKHX where
        (VkBindBufferMemoryDeviceGroupInfoKHX## a) `compare`
          (VkBindBufferMemoryDeviceGroupInfoKHX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkBindBufferMemoryDeviceGroupInfoKHX where
        sizeOf ~_
          = #{size VkBindBufferMemoryDeviceGroupInfoKHX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkBindBufferMemoryDeviceGroupInfoKHX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf
                      (undefined :: VkBindBufferMemoryDeviceGroupInfoKHX),
            I## a <- alignment
                      (undefined :: VkBindBufferMemoryDeviceGroupInfoKHX)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkBindBufferMemoryDeviceGroupInfoKHX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkBindBufferMemoryDeviceGroupInfoKHX## ba)
          | I## n <- sizeOf
                      (undefined :: VkBindBufferMemoryDeviceGroupInfoKHX)
            = IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkBindBufferMemoryDeviceGroupInfoKHX where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf
                      (undefined :: VkBindBufferMemoryDeviceGroupInfoKHX),
            I## a <- alignment
                      (undefined :: VkBindBufferMemoryDeviceGroupInfoKHX)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkBindBufferMemoryDeviceGroupInfoKHX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkBindBufferMemoryDeviceGroupInfoKHX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr
          = fromForeignPtr## VkBindBufferMemoryDeviceGroupInfoKHX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkBindBufferMemoryDeviceGroupInfoKHX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkBindBufferMemoryDeviceGroupInfoKHX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkBindBufferMemoryDeviceGroupInfoKHX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkBindBufferMemoryDeviceGroupInfoKHX where
        type VkSTypeMType VkBindBufferMemoryDeviceGroupInfoKHX =
             VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkBindBufferMemoryDeviceGroupInfoKHX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkBindBufferMemoryDeviceGroupInfoKHX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkBindBufferMemoryDeviceGroupInfoKHX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkBindBufferMemoryDeviceGroupInfoKHX, sType}

instance {-# OVERLAPPING #-}
         HasVkPNext VkBindBufferMemoryDeviceGroupInfoKHX where
        type VkPNextMType VkBindBufferMemoryDeviceGroupInfoKHX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkBindBufferMemoryDeviceGroupInfoKHX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkBindBufferMemoryDeviceGroupInfoKHX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkBindBufferMemoryDeviceGroupInfoKHX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkBindBufferMemoryDeviceGroupInfoKHX, pNext}

instance {-# OVERLAPPING #-}
         HasVkDeviceIndexCount VkBindBufferMemoryDeviceGroupInfoKHX where
        type VkDeviceIndexCountMType VkBindBufferMemoryDeviceGroupInfoKHX =
             Word32

        {-# NOINLINE vkDeviceIndexCount #-}
        vkDeviceIndexCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkBindBufferMemoryDeviceGroupInfoKHX, deviceIndexCount})

        {-# INLINE vkDeviceIndexCountByteOffset #-}
        vkDeviceIndexCountByteOffset ~_
          = #{offset VkBindBufferMemoryDeviceGroupInfoKHX, deviceIndexCount}

        {-# INLINE readVkDeviceIndexCount #-}
        readVkDeviceIndexCount p
          = peekByteOff p #{offset VkBindBufferMemoryDeviceGroupInfoKHX, deviceIndexCount}

        {-# INLINE writeVkDeviceIndexCount #-}
        writeVkDeviceIndexCount p
          = pokeByteOff p #{offset VkBindBufferMemoryDeviceGroupInfoKHX, deviceIndexCount}

instance {-# OVERLAPPING #-}
         HasVkPDeviceIndices VkBindBufferMemoryDeviceGroupInfoKHX where
        type VkPDeviceIndicesMType VkBindBufferMemoryDeviceGroupInfoKHX =
             Ptr Word32

        {-# NOINLINE vkPDeviceIndices #-}
        vkPDeviceIndices x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkBindBufferMemoryDeviceGroupInfoKHX, pDeviceIndices})

        {-# INLINE vkPDeviceIndicesByteOffset #-}
        vkPDeviceIndicesByteOffset ~_
          = #{offset VkBindBufferMemoryDeviceGroupInfoKHX, pDeviceIndices}

        {-# INLINE readVkPDeviceIndices #-}
        readVkPDeviceIndices p
          = peekByteOff p #{offset VkBindBufferMemoryDeviceGroupInfoKHX, pDeviceIndices}

        {-# INLINE writeVkPDeviceIndices #-}
        writeVkPDeviceIndices p
          = pokeByteOff p #{offset VkBindBufferMemoryDeviceGroupInfoKHX, pDeviceIndices}

instance Show VkBindBufferMemoryDeviceGroupInfoKHX where
        showsPrec d x
          = showString "VkBindBufferMemoryDeviceGroupInfoKHX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkDeviceIndexCount = " .
                            showsPrec d (vkDeviceIndexCount x) .
                              showString ", " .
                                showString "vkPDeviceIndices = " .
                                  showsPrec d (vkPDeviceIndices x) . showChar '}'

data VkBindImageMemoryDeviceGroupInfoKHX = VkBindImageMemoryDeviceGroupInfoKHX## ByteArray##

instance Eq VkBindImageMemoryDeviceGroupInfoKHX where
        (VkBindImageMemoryDeviceGroupInfoKHX## a) ==
          (VkBindImageMemoryDeviceGroupInfoKHX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkBindImageMemoryDeviceGroupInfoKHX where
        (VkBindImageMemoryDeviceGroupInfoKHX## a) `compare`
          (VkBindImageMemoryDeviceGroupInfoKHX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkBindImageMemoryDeviceGroupInfoKHX where
        sizeOf ~_ = #{size VkBindImageMemoryDeviceGroupInfoKHX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkBindImageMemoryDeviceGroupInfoKHX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf
                      (undefined :: VkBindImageMemoryDeviceGroupInfoKHX),
            I## a <- alignment
                      (undefined :: VkBindImageMemoryDeviceGroupInfoKHX)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkBindImageMemoryDeviceGroupInfoKHX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkBindImageMemoryDeviceGroupInfoKHX## ba)
          | I## n <- sizeOf (undefined :: VkBindImageMemoryDeviceGroupInfoKHX)
            = IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkBindImageMemoryDeviceGroupInfoKHX where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf
                      (undefined :: VkBindImageMemoryDeviceGroupInfoKHX),
            I## a <- alignment
                      (undefined :: VkBindImageMemoryDeviceGroupInfoKHX)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkBindImageMemoryDeviceGroupInfoKHX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkBindImageMemoryDeviceGroupInfoKHX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr
          = fromForeignPtr## VkBindImageMemoryDeviceGroupInfoKHX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkBindImageMemoryDeviceGroupInfoKHX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkBindImageMemoryDeviceGroupInfoKHX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkBindImageMemoryDeviceGroupInfoKHX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkBindImageMemoryDeviceGroupInfoKHX where
        type VkSTypeMType VkBindImageMemoryDeviceGroupInfoKHX =
             VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkBindImageMemoryDeviceGroupInfoKHX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkBindImageMemoryDeviceGroupInfoKHX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkBindImageMemoryDeviceGroupInfoKHX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkBindImageMemoryDeviceGroupInfoKHX, sType}

instance {-# OVERLAPPING #-}
         HasVkPNext VkBindImageMemoryDeviceGroupInfoKHX where
        type VkPNextMType VkBindImageMemoryDeviceGroupInfoKHX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkBindImageMemoryDeviceGroupInfoKHX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkBindImageMemoryDeviceGroupInfoKHX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkBindImageMemoryDeviceGroupInfoKHX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkBindImageMemoryDeviceGroupInfoKHX, pNext}

instance {-# OVERLAPPING #-}
         HasVkDeviceIndexCount VkBindImageMemoryDeviceGroupInfoKHX where
        type VkDeviceIndexCountMType VkBindImageMemoryDeviceGroupInfoKHX =
             Word32

        {-# NOINLINE vkDeviceIndexCount #-}
        vkDeviceIndexCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkBindImageMemoryDeviceGroupInfoKHX, deviceIndexCount})

        {-# INLINE vkDeviceIndexCountByteOffset #-}
        vkDeviceIndexCountByteOffset ~_
          = #{offset VkBindImageMemoryDeviceGroupInfoKHX, deviceIndexCount}

        {-# INLINE readVkDeviceIndexCount #-}
        readVkDeviceIndexCount p
          = peekByteOff p #{offset VkBindImageMemoryDeviceGroupInfoKHX, deviceIndexCount}

        {-# INLINE writeVkDeviceIndexCount #-}
        writeVkDeviceIndexCount p
          = pokeByteOff p #{offset VkBindImageMemoryDeviceGroupInfoKHX, deviceIndexCount}

instance {-# OVERLAPPING #-}
         HasVkPDeviceIndices VkBindImageMemoryDeviceGroupInfoKHX where
        type VkPDeviceIndicesMType VkBindImageMemoryDeviceGroupInfoKHX =
             Ptr Word32

        {-# NOINLINE vkPDeviceIndices #-}
        vkPDeviceIndices x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkBindImageMemoryDeviceGroupInfoKHX, pDeviceIndices})

        {-# INLINE vkPDeviceIndicesByteOffset #-}
        vkPDeviceIndicesByteOffset ~_
          = #{offset VkBindImageMemoryDeviceGroupInfoKHX, pDeviceIndices}

        {-# INLINE readVkPDeviceIndices #-}
        readVkPDeviceIndices p
          = peekByteOff p #{offset VkBindImageMemoryDeviceGroupInfoKHX, pDeviceIndices}

        {-# INLINE writeVkPDeviceIndices #-}
        writeVkPDeviceIndices p
          = pokeByteOff p #{offset VkBindImageMemoryDeviceGroupInfoKHX, pDeviceIndices}

instance {-# OVERLAPPING #-}
         HasVkSFRRectCount VkBindImageMemoryDeviceGroupInfoKHX where
        type VkSFRRectCountMType VkBindImageMemoryDeviceGroupInfoKHX =
             Word32

        {-# NOINLINE vkSFRRectCount #-}
        vkSFRRectCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkBindImageMemoryDeviceGroupInfoKHX, SFRRectCount})

        {-# INLINE vkSFRRectCountByteOffset #-}
        vkSFRRectCountByteOffset ~_
          = #{offset VkBindImageMemoryDeviceGroupInfoKHX, SFRRectCount}

        {-# INLINE readVkSFRRectCount #-}
        readVkSFRRectCount p
          = peekByteOff p #{offset VkBindImageMemoryDeviceGroupInfoKHX, SFRRectCount}

        {-# INLINE writeVkSFRRectCount #-}
        writeVkSFRRectCount p
          = pokeByteOff p #{offset VkBindImageMemoryDeviceGroupInfoKHX, SFRRectCount}

instance {-# OVERLAPPING #-}
         HasVkPSFRRects VkBindImageMemoryDeviceGroupInfoKHX where
        type VkPSFRRectsMType VkBindImageMemoryDeviceGroupInfoKHX =
             Ptr VkRect2D

        {-# NOINLINE vkPSFRRects #-}
        vkPSFRRects x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkBindImageMemoryDeviceGroupInfoKHX, pSFRRects})

        {-# INLINE vkPSFRRectsByteOffset #-}
        vkPSFRRectsByteOffset ~_
          = #{offset VkBindImageMemoryDeviceGroupInfoKHX, pSFRRects}

        {-# INLINE readVkPSFRRects #-}
        readVkPSFRRects p
          = peekByteOff p #{offset VkBindImageMemoryDeviceGroupInfoKHX, pSFRRects}

        {-# INLINE writeVkPSFRRects #-}
        writeVkPSFRRects p
          = pokeByteOff p #{offset VkBindImageMemoryDeviceGroupInfoKHX, pSFRRects}

instance Show VkBindImageMemoryDeviceGroupInfoKHX where
        showsPrec d x
          = showString "VkBindImageMemoryDeviceGroupInfoKHX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkDeviceIndexCount = " .
                            showsPrec d (vkDeviceIndexCount x) .
                              showString ", " .
                                showString "vkPDeviceIndices = " .
                                  showsPrec d (vkPDeviceIndices x) .
                                    showString ", " .
                                      showString "vkSFRRectCount = " .
                                        showsPrec d (vkSFRRectCount x) .
                                          showString ", " .
                                            showString "vkPSFRRects = " .
                                              showsPrec d (vkPSFRRects x) . showChar '}'

pattern VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO_KHX
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO_KHX
        = VkStructureType 1000060013

pattern VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO_KHX
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO_KHX =
        VkStructureType 1000060014

-- | Allows using VkBindImageMemoryDeviceGroupInfoKHX::pSFRRects when binding memory to the image
--
--   bitpos = @6@
pattern VK_IMAGE_CREATE_BIND_SFR_BIT_KHX :: VkImageCreateFlagBits

pattern VK_IMAGE_CREATE_BIND_SFR_BIT_KHX = VkImageCreateFlagBits 64

data VkDeviceGroupPresentCapabilitiesKHX = VkDeviceGroupPresentCapabilitiesKHX## ByteArray##

instance Eq VkDeviceGroupPresentCapabilitiesKHX where
        (VkDeviceGroupPresentCapabilitiesKHX## a) ==
          (VkDeviceGroupPresentCapabilitiesKHX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkDeviceGroupPresentCapabilitiesKHX where
        (VkDeviceGroupPresentCapabilitiesKHX## a) `compare`
          (VkDeviceGroupPresentCapabilitiesKHX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkDeviceGroupPresentCapabilitiesKHX where
        sizeOf ~_ = #{size VkDeviceGroupPresentCapabilitiesKHX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkDeviceGroupPresentCapabilitiesKHX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf
                      (undefined :: VkDeviceGroupPresentCapabilitiesKHX),
            I## a <- alignment
                      (undefined :: VkDeviceGroupPresentCapabilitiesKHX)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkDeviceGroupPresentCapabilitiesKHX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkDeviceGroupPresentCapabilitiesKHX## ba)
          | I## n <- sizeOf (undefined :: VkDeviceGroupPresentCapabilitiesKHX)
            = IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkDeviceGroupPresentCapabilitiesKHX where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf
                      (undefined :: VkDeviceGroupPresentCapabilitiesKHX),
            I## a <- alignment
                      (undefined :: VkDeviceGroupPresentCapabilitiesKHX)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkDeviceGroupPresentCapabilitiesKHX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkDeviceGroupPresentCapabilitiesKHX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr
          = fromForeignPtr## VkDeviceGroupPresentCapabilitiesKHX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkDeviceGroupPresentCapabilitiesKHX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkDeviceGroupPresentCapabilitiesKHX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkDeviceGroupPresentCapabilitiesKHX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkDeviceGroupPresentCapabilitiesKHX where
        type VkSTypeMType VkDeviceGroupPresentCapabilitiesKHX =
             VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupPresentCapabilitiesKHX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkDeviceGroupPresentCapabilitiesKHX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkDeviceGroupPresentCapabilitiesKHX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkDeviceGroupPresentCapabilitiesKHX, sType}

instance {-# OVERLAPPING #-}
         HasVkPNext VkDeviceGroupPresentCapabilitiesKHX where
        type VkPNextMType VkDeviceGroupPresentCapabilitiesKHX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupPresentCapabilitiesKHX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkDeviceGroupPresentCapabilitiesKHX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkDeviceGroupPresentCapabilitiesKHX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkDeviceGroupPresentCapabilitiesKHX, pNext}

instance {-# OVERLAPPING #-}
         HasVkPresentMaskArray VkDeviceGroupPresentCapabilitiesKHX where
        type VkPresentMaskArrayMType VkDeviceGroupPresentCapabilitiesKHX =
             Word32

        {-# NOINLINE vkPresentMaskArray #-}
        vkPresentMaskArray x idx
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x)
                 (idx * sizeOf (undefined :: Word32) +
                    #{offset VkDeviceGroupPresentCapabilitiesKHX, presentMask}))

        {-# INLINE vkPresentMaskArrayByteOffset #-}
        vkPresentMaskArrayByteOffset ~_
          = #{offset VkDeviceGroupPresentCapabilitiesKHX, presentMask}

        {-# INLINE readVkPresentMaskArray #-}
        readVkPresentMaskArray p idx
          = peekByteOff p
              (idx * sizeOf (undefined :: Word32) +
                 #{offset VkDeviceGroupPresentCapabilitiesKHX, presentMask})

        {-# INLINE writeVkPresentMaskArray #-}
        writeVkPresentMaskArray p idx
          = pokeByteOff p
              (idx * sizeOf (undefined :: Word32) +
                 #{offset VkDeviceGroupPresentCapabilitiesKHX, presentMask})

instance {-# OVERLAPPING #-}
         HasVkModes VkDeviceGroupPresentCapabilitiesKHX where
        type VkModesMType VkDeviceGroupPresentCapabilitiesKHX =
             VkDeviceGroupPresentModeFlagsKHX

        {-# NOINLINE vkModes #-}
        vkModes x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupPresentCapabilitiesKHX, modes})

        {-# INLINE vkModesByteOffset #-}
        vkModesByteOffset ~_
          = #{offset VkDeviceGroupPresentCapabilitiesKHX, modes}

        {-# INLINE readVkModes #-}
        readVkModes p
          = peekByteOff p #{offset VkDeviceGroupPresentCapabilitiesKHX, modes}

        {-# INLINE writeVkModes #-}
        writeVkModes p
          = pokeByteOff p #{offset VkDeviceGroupPresentCapabilitiesKHX, modes}

instance Show VkDeviceGroupPresentCapabilitiesKHX where
        showsPrec d x
          = showString "VkDeviceGroupPresentCapabilitiesKHX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkPresentMaskArray = [" .
                            showsPrec d
                              (map (vkPresentMaskArray x) [1 .. VK_MAX_DEVICE_GROUP_SIZE_KHX])
                              .
                              showChar ']' .
                                showString ", " .
                                  showString "vkModes = " . showsPrec d (vkModes x) . showChar '}'

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkGetDeviceGroupPresentCapabilitiesKHX
--   >     ( VkDevice device
--   >     , VkDeviceGroupPresentCapabilitiesKHX* pDeviceGroupPresentCapabilities
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkGetDeviceGroupPresentCapabilitiesKHX.html vkGetDeviceGroupPresentCapabilitiesKHX registry at www.khronos.org>
foreign import ccall unsafe
               "vkGetDeviceGroupPresentCapabilitiesKHX"
               vkGetDeviceGroupPresentCapabilitiesKHX ::
               VkDevice -- ^ device
                        -> Ptr VkDeviceGroupPresentCapabilitiesKHX -- ^ pDeviceGroupPresentCapabilities
                                                                   -> IO VkResult

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetDeviceGroupSurfacePresentModesKHX
--   >     ( VkDevice device
--   >     , VkSurfaceKHR surface
--   >     , VkDeviceGroupPresentModeFlagsKHX* pModes
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkGetDeviceGroupSurfacePresentModesKHX.html vkGetDeviceGroupSurfacePresentModesKHX registry at www.khronos.org>
foreign import ccall unsafe
               "vkGetDeviceGroupSurfacePresentModesKHX"
               vkGetDeviceGroupSurfacePresentModesKHX ::
               VkDevice -- ^ device
                        ->
                 VkSurfaceKHR -- ^ surface
                              -> Ptr VkDeviceGroupPresentModeFlagsKHX -- ^ pModes
                                                                      -> IO VkResult

-- | Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkGetPhysicalDevicePresentRectanglesKHX
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkSurfaceKHR surface
--   >     , uint32_t* pRectCount
--   >     , VkRect2D* pRects
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkGetPhysicalDevicePresentRectanglesKHX.html vkGetPhysicalDevicePresentRectanglesKHX registry at www.khronos.org>
foreign import ccall unsafe
               "vkGetPhysicalDevicePresentRectanglesKHX"
               vkGetPhysicalDevicePresentRectanglesKHX ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 VkSurfaceKHR -- ^ surface
                              -> Ptr Word32 -- ^ pRectCount
                                            -> Ptr VkRect2D -- ^ pRects
                                                            -> IO VkResult

pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHX =
        VkStructureType 1000060007

data VkImageSwapchainCreateInfoKHX = VkImageSwapchainCreateInfoKHX## ByteArray##

instance Eq VkImageSwapchainCreateInfoKHX where
        (VkImageSwapchainCreateInfoKHX## a) ==
          (VkImageSwapchainCreateInfoKHX## b) = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkImageSwapchainCreateInfoKHX where
        (VkImageSwapchainCreateInfoKHX## a) `compare`
          (VkImageSwapchainCreateInfoKHX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkImageSwapchainCreateInfoKHX where
        sizeOf ~_ = #{size VkImageSwapchainCreateInfoKHX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkImageSwapchainCreateInfoKHX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkImageSwapchainCreateInfoKHX),
            I## a <- alignment (undefined :: VkImageSwapchainCreateInfoKHX) =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkImageSwapchainCreateInfoKHX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkImageSwapchainCreateInfoKHX## ba)
          | I## n <- sizeOf (undefined :: VkImageSwapchainCreateInfoKHX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkImageSwapchainCreateInfoKHX where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkImageSwapchainCreateInfoKHX),
            I## a <- alignment (undefined :: VkImageSwapchainCreateInfoKHX) =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkImageSwapchainCreateInfoKHX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkImageSwapchainCreateInfoKHX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkImageSwapchainCreateInfoKHX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkImageSwapchainCreateInfoKHX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkImageSwapchainCreateInfoKHX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkImageSwapchainCreateInfoKHX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkImageSwapchainCreateInfoKHX where
        type VkSTypeMType VkImageSwapchainCreateInfoKHX = VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkImageSwapchainCreateInfoKHX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkImageSwapchainCreateInfoKHX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkImageSwapchainCreateInfoKHX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkImageSwapchainCreateInfoKHX, sType}

instance {-# OVERLAPPING #-}
         HasVkPNext VkImageSwapchainCreateInfoKHX where
        type VkPNextMType VkImageSwapchainCreateInfoKHX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkImageSwapchainCreateInfoKHX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkImageSwapchainCreateInfoKHX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkImageSwapchainCreateInfoKHX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkImageSwapchainCreateInfoKHX, pNext}

instance {-# OVERLAPPING #-}
         HasVkSwapchain VkImageSwapchainCreateInfoKHX where
        type VkSwapchainMType VkImageSwapchainCreateInfoKHX =
             VkSwapchainKHR

        {-# NOINLINE vkSwapchain #-}
        vkSwapchain x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkImageSwapchainCreateInfoKHX, swapchain})

        {-# INLINE vkSwapchainByteOffset #-}
        vkSwapchainByteOffset ~_
          = #{offset VkImageSwapchainCreateInfoKHX, swapchain}

        {-# INLINE readVkSwapchain #-}
        readVkSwapchain p
          = peekByteOff p #{offset VkImageSwapchainCreateInfoKHX, swapchain}

        {-# INLINE writeVkSwapchain #-}
        writeVkSwapchain p
          = pokeByteOff p #{offset VkImageSwapchainCreateInfoKHX, swapchain}

instance Show VkImageSwapchainCreateInfoKHX where
        showsPrec d x
          = showString "VkImageSwapchainCreateInfoKHX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkSwapchain = " .
                            showsPrec d (vkSwapchain x) . showChar '}'

data VkBindImageMemorySwapchainInfoKHX = VkBindImageMemorySwapchainInfoKHX## ByteArray##

instance Eq VkBindImageMemorySwapchainInfoKHX where
        (VkBindImageMemorySwapchainInfoKHX## a) ==
          (VkBindImageMemorySwapchainInfoKHX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkBindImageMemorySwapchainInfoKHX where
        (VkBindImageMemorySwapchainInfoKHX## a) `compare`
          (VkBindImageMemorySwapchainInfoKHX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkBindImageMemorySwapchainInfoKHX where
        sizeOf ~_ = #{size VkBindImageMemorySwapchainInfoKHX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkBindImageMemorySwapchainInfoKHX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkBindImageMemorySwapchainInfoKHX),
            I## a <- alignment (undefined :: VkBindImageMemorySwapchainInfoKHX)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkBindImageMemorySwapchainInfoKHX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkBindImageMemorySwapchainInfoKHX## ba)
          | I## n <- sizeOf (undefined :: VkBindImageMemorySwapchainInfoKHX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkBindImageMemorySwapchainInfoKHX where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkBindImageMemorySwapchainInfoKHX),
            I## a <- alignment (undefined :: VkBindImageMemorySwapchainInfoKHX)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkBindImageMemorySwapchainInfoKHX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkBindImageMemorySwapchainInfoKHX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkBindImageMemorySwapchainInfoKHX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkBindImageMemorySwapchainInfoKHX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkBindImageMemorySwapchainInfoKHX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkBindImageMemorySwapchainInfoKHX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkBindImageMemorySwapchainInfoKHX where
        type VkSTypeMType VkBindImageMemorySwapchainInfoKHX =
             VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkBindImageMemorySwapchainInfoKHX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkBindImageMemorySwapchainInfoKHX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkBindImageMemorySwapchainInfoKHX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkBindImageMemorySwapchainInfoKHX, sType}

instance {-# OVERLAPPING #-}
         HasVkPNext VkBindImageMemorySwapchainInfoKHX where
        type VkPNextMType VkBindImageMemorySwapchainInfoKHX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkBindImageMemorySwapchainInfoKHX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkBindImageMemorySwapchainInfoKHX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkBindImageMemorySwapchainInfoKHX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkBindImageMemorySwapchainInfoKHX, pNext}

instance {-# OVERLAPPING #-}
         HasVkSwapchain VkBindImageMemorySwapchainInfoKHX where
        type VkSwapchainMType VkBindImageMemorySwapchainInfoKHX =
             VkSwapchainKHR

        {-# NOINLINE vkSwapchain #-}
        vkSwapchain x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkBindImageMemorySwapchainInfoKHX, swapchain})

        {-# INLINE vkSwapchainByteOffset #-}
        vkSwapchainByteOffset ~_
          = #{offset VkBindImageMemorySwapchainInfoKHX, swapchain}

        {-# INLINE readVkSwapchain #-}
        readVkSwapchain p
          = peekByteOff p #{offset VkBindImageMemorySwapchainInfoKHX, swapchain}

        {-# INLINE writeVkSwapchain #-}
        writeVkSwapchain p
          = pokeByteOff p #{offset VkBindImageMemorySwapchainInfoKHX, swapchain}

instance {-# OVERLAPPING #-}
         HasVkImageIndex VkBindImageMemorySwapchainInfoKHX where
        type VkImageIndexMType VkBindImageMemorySwapchainInfoKHX = Word32

        {-# NOINLINE vkImageIndex #-}
        vkImageIndex x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkBindImageMemorySwapchainInfoKHX, imageIndex})

        {-# INLINE vkImageIndexByteOffset #-}
        vkImageIndexByteOffset ~_
          = #{offset VkBindImageMemorySwapchainInfoKHX, imageIndex}

        {-# INLINE readVkImageIndex #-}
        readVkImageIndex p
          = peekByteOff p #{offset VkBindImageMemorySwapchainInfoKHX, imageIndex}

        {-# INLINE writeVkImageIndex #-}
        writeVkImageIndex p
          = pokeByteOff p #{offset VkBindImageMemorySwapchainInfoKHX, imageIndex}

instance Show VkBindImageMemorySwapchainInfoKHX where
        showsPrec d x
          = showString "VkBindImageMemorySwapchainInfoKHX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkSwapchain = " .
                            showsPrec d (vkSwapchain x) .
                              showString ", " .
                                showString "vkImageIndex = " .
                                  showsPrec d (vkImageIndex x) . showChar '}'

data VkAcquireNextImageInfoKHX = VkAcquireNextImageInfoKHX## ByteArray##

instance Eq VkAcquireNextImageInfoKHX where
        (VkAcquireNextImageInfoKHX## a) == (VkAcquireNextImageInfoKHX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkAcquireNextImageInfoKHX where
        (VkAcquireNextImageInfoKHX## a) `compare`
          (VkAcquireNextImageInfoKHX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkAcquireNextImageInfoKHX where
        sizeOf ~_ = #{size VkAcquireNextImageInfoKHX}

        {-# INLINE sizeOf #-}
        alignment ~_ = #{alignment VkAcquireNextImageInfoKHX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkAcquireNextImageInfoKHX),
            I## a <- alignment (undefined :: VkAcquireNextImageInfoKHX) =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkAcquireNextImageInfoKHX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkAcquireNextImageInfoKHX## ba)
          | I## n <- sizeOf (undefined :: VkAcquireNextImageInfoKHX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkAcquireNextImageInfoKHX where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkAcquireNextImageInfoKHX),
            I## a <- alignment (undefined :: VkAcquireNextImageInfoKHX) =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkAcquireNextImageInfoKHX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkAcquireNextImageInfoKHX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkAcquireNextImageInfoKHX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkAcquireNextImageInfoKHX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkAcquireNextImageInfoKHX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkAcquireNextImageInfoKHX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-} HasVkSType VkAcquireNextImageInfoKHX
         where
        type VkSTypeMType VkAcquireNextImageInfoKHX = VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkAcquireNextImageInfoKHX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkAcquireNextImageInfoKHX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkAcquireNextImageInfoKHX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkAcquireNextImageInfoKHX, sType}

instance {-# OVERLAPPING #-} HasVkPNext VkAcquireNextImageInfoKHX
         where
        type VkPNextMType VkAcquireNextImageInfoKHX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkAcquireNextImageInfoKHX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkAcquireNextImageInfoKHX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkAcquireNextImageInfoKHX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkAcquireNextImageInfoKHX, pNext}

instance {-# OVERLAPPING #-}
         HasVkSwapchain VkAcquireNextImageInfoKHX where
        type VkSwapchainMType VkAcquireNextImageInfoKHX = VkSwapchainKHR

        {-# NOINLINE vkSwapchain #-}
        vkSwapchain x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkAcquireNextImageInfoKHX, swapchain})

        {-# INLINE vkSwapchainByteOffset #-}
        vkSwapchainByteOffset ~_
          = #{offset VkAcquireNextImageInfoKHX, swapchain}

        {-# INLINE readVkSwapchain #-}
        readVkSwapchain p
          = peekByteOff p #{offset VkAcquireNextImageInfoKHX, swapchain}

        {-# INLINE writeVkSwapchain #-}
        writeVkSwapchain p
          = pokeByteOff p #{offset VkAcquireNextImageInfoKHX, swapchain}

instance {-# OVERLAPPING #-} HasVkTimeout VkAcquireNextImageInfoKHX
         where
        type VkTimeoutMType VkAcquireNextImageInfoKHX = Word64

        {-# NOINLINE vkTimeout #-}
        vkTimeout x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkAcquireNextImageInfoKHX, timeout})

        {-# INLINE vkTimeoutByteOffset #-}
        vkTimeoutByteOffset ~_
          = #{offset VkAcquireNextImageInfoKHX, timeout}

        {-# INLINE readVkTimeout #-}
        readVkTimeout p
          = peekByteOff p #{offset VkAcquireNextImageInfoKHX, timeout}

        {-# INLINE writeVkTimeout #-}
        writeVkTimeout p
          = pokeByteOff p #{offset VkAcquireNextImageInfoKHX, timeout}

instance {-# OVERLAPPING #-}
         HasVkSemaphore VkAcquireNextImageInfoKHX where
        type VkSemaphoreMType VkAcquireNextImageInfoKHX = VkSemaphore

        {-# NOINLINE vkSemaphore #-}
        vkSemaphore x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkAcquireNextImageInfoKHX, semaphore})

        {-# INLINE vkSemaphoreByteOffset #-}
        vkSemaphoreByteOffset ~_
          = #{offset VkAcquireNextImageInfoKHX, semaphore}

        {-# INLINE readVkSemaphore #-}
        readVkSemaphore p
          = peekByteOff p #{offset VkAcquireNextImageInfoKHX, semaphore}

        {-# INLINE writeVkSemaphore #-}
        writeVkSemaphore p
          = pokeByteOff p #{offset VkAcquireNextImageInfoKHX, semaphore}

instance {-# OVERLAPPING #-} HasVkFence VkAcquireNextImageInfoKHX
         where
        type VkFenceMType VkAcquireNextImageInfoKHX = VkFence

        {-# NOINLINE vkFence #-}
        vkFence x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkAcquireNextImageInfoKHX, fence})

        {-# INLINE vkFenceByteOffset #-}
        vkFenceByteOffset ~_
          = #{offset VkAcquireNextImageInfoKHX, fence}

        {-# INLINE readVkFence #-}
        readVkFence p
          = peekByteOff p #{offset VkAcquireNextImageInfoKHX, fence}

        {-# INLINE writeVkFence #-}
        writeVkFence p
          = pokeByteOff p #{offset VkAcquireNextImageInfoKHX, fence}

instance {-# OVERLAPPING #-}
         HasVkDeviceMask VkAcquireNextImageInfoKHX where
        type VkDeviceMaskMType VkAcquireNextImageInfoKHX = Word32

        {-# NOINLINE vkDeviceMask #-}
        vkDeviceMask x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkAcquireNextImageInfoKHX, deviceMask})

        {-# INLINE vkDeviceMaskByteOffset #-}
        vkDeviceMaskByteOffset ~_
          = #{offset VkAcquireNextImageInfoKHX, deviceMask}

        {-# INLINE readVkDeviceMask #-}
        readVkDeviceMask p
          = peekByteOff p #{offset VkAcquireNextImageInfoKHX, deviceMask}

        {-# INLINE writeVkDeviceMask #-}
        writeVkDeviceMask p
          = pokeByteOff p #{offset VkAcquireNextImageInfoKHX, deviceMask}

instance Show VkAcquireNextImageInfoKHX where
        showsPrec d x
          = showString "VkAcquireNextImageInfoKHX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkSwapchain = " .
                            showsPrec d (vkSwapchain x) .
                              showString ", " .
                                showString "vkTimeout = " .
                                  showsPrec d (vkTimeout x) .
                                    showString ", " .
                                      showString "vkSemaphore = " .
                                        showsPrec d (vkSemaphore x) .
                                          showString ", " .
                                            showString "vkFence = " .
                                              showsPrec d (vkFence x) .
                                                showString ", " .
                                                  showString "vkDeviceMask = " .
                                                    showsPrec d (vkDeviceMask x) . showChar '}'

data VkDeviceGroupPresentInfoKHX = VkDeviceGroupPresentInfoKHX## ByteArray##

instance Eq VkDeviceGroupPresentInfoKHX where
        (VkDeviceGroupPresentInfoKHX## a) ==
          (VkDeviceGroupPresentInfoKHX## b) = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkDeviceGroupPresentInfoKHX where
        (VkDeviceGroupPresentInfoKHX## a) `compare`
          (VkDeviceGroupPresentInfoKHX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkDeviceGroupPresentInfoKHX where
        sizeOf ~_ = #{size VkDeviceGroupPresentInfoKHX}

        {-# INLINE sizeOf #-}
        alignment ~_ = #{alignment VkDeviceGroupPresentInfoKHX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf (undefined :: VkDeviceGroupPresentInfoKHX),
            I## a <- alignment (undefined :: VkDeviceGroupPresentInfoKHX) =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkDeviceGroupPresentInfoKHX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkDeviceGroupPresentInfoKHX## ba)
          | I## n <- sizeOf (undefined :: VkDeviceGroupPresentInfoKHX) =
            IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkDeviceGroupPresentInfoKHX where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf (undefined :: VkDeviceGroupPresentInfoKHX),
            I## a <- alignment (undefined :: VkDeviceGroupPresentInfoKHX) =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkDeviceGroupPresentInfoKHX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkDeviceGroupPresentInfoKHX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr = fromForeignPtr## VkDeviceGroupPresentInfoKHX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkDeviceGroupPresentInfoKHX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkDeviceGroupPresentInfoKHX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkDeviceGroupPresentInfoKHX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-} HasVkSType VkDeviceGroupPresentInfoKHX
         where
        type VkSTypeMType VkDeviceGroupPresentInfoKHX = VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupPresentInfoKHX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkDeviceGroupPresentInfoKHX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkDeviceGroupPresentInfoKHX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkDeviceGroupPresentInfoKHX, sType}

instance {-# OVERLAPPING #-} HasVkPNext VkDeviceGroupPresentInfoKHX
         where
        type VkPNextMType VkDeviceGroupPresentInfoKHX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupPresentInfoKHX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkDeviceGroupPresentInfoKHX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkDeviceGroupPresentInfoKHX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkDeviceGroupPresentInfoKHX, pNext}

instance {-# OVERLAPPING #-}
         HasVkSwapchainCount VkDeviceGroupPresentInfoKHX where
        type VkSwapchainCountMType VkDeviceGroupPresentInfoKHX = Word32

        {-# NOINLINE vkSwapchainCount #-}
        vkSwapchainCount x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupPresentInfoKHX, swapchainCount})

        {-# INLINE vkSwapchainCountByteOffset #-}
        vkSwapchainCountByteOffset ~_
          = #{offset VkDeviceGroupPresentInfoKHX, swapchainCount}

        {-# INLINE readVkSwapchainCount #-}
        readVkSwapchainCount p
          = peekByteOff p #{offset VkDeviceGroupPresentInfoKHX, swapchainCount}

        {-# INLINE writeVkSwapchainCount #-}
        writeVkSwapchainCount p
          = pokeByteOff p #{offset VkDeviceGroupPresentInfoKHX, swapchainCount}

instance {-# OVERLAPPING #-}
         HasVkPDeviceMasks VkDeviceGroupPresentInfoKHX where
        type VkPDeviceMasksMType VkDeviceGroupPresentInfoKHX = Ptr Word32

        {-# NOINLINE vkPDeviceMasks #-}
        vkPDeviceMasks x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupPresentInfoKHX, pDeviceMasks})

        {-# INLINE vkPDeviceMasksByteOffset #-}
        vkPDeviceMasksByteOffset ~_
          = #{offset VkDeviceGroupPresentInfoKHX, pDeviceMasks}

        {-# INLINE readVkPDeviceMasks #-}
        readVkPDeviceMasks p
          = peekByteOff p #{offset VkDeviceGroupPresentInfoKHX, pDeviceMasks}

        {-# INLINE writeVkPDeviceMasks #-}
        writeVkPDeviceMasks p
          = pokeByteOff p #{offset VkDeviceGroupPresentInfoKHX, pDeviceMasks}

instance {-# OVERLAPPING #-} HasVkMode VkDeviceGroupPresentInfoKHX
         where
        type VkModeMType VkDeviceGroupPresentInfoKHX =
             VkDeviceGroupPresentModeFlagBitsKHX

        {-# NOINLINE vkMode #-}
        vkMode x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupPresentInfoKHX, mode})

        {-# INLINE vkModeByteOffset #-}
        vkModeByteOffset ~_
          = #{offset VkDeviceGroupPresentInfoKHX, mode}

        {-# INLINE readVkMode #-}
        readVkMode p
          = peekByteOff p #{offset VkDeviceGroupPresentInfoKHX, mode}

        {-# INLINE writeVkMode #-}
        writeVkMode p
          = pokeByteOff p #{offset VkDeviceGroupPresentInfoKHX, mode}

instance Show VkDeviceGroupPresentInfoKHX where
        showsPrec d x
          = showString "VkDeviceGroupPresentInfoKHX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkSwapchainCount = " .
                            showsPrec d (vkSwapchainCount x) .
                              showString ", " .
                                showString "vkPDeviceMasks = " .
                                  showsPrec d (vkPDeviceMasks x) .
                                    showString ", " .
                                      showString "vkMode = " . showsPrec d (vkMode x) . showChar '}'

data VkDeviceGroupSwapchainCreateInfoKHX = VkDeviceGroupSwapchainCreateInfoKHX## ByteArray##

instance Eq VkDeviceGroupSwapchainCreateInfoKHX where
        (VkDeviceGroupSwapchainCreateInfoKHX## a) ==
          (VkDeviceGroupSwapchainCreateInfoKHX## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkDeviceGroupSwapchainCreateInfoKHX where
        (VkDeviceGroupSwapchainCreateInfoKHX## a) `compare`
          (VkDeviceGroupSwapchainCreateInfoKHX## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkDeviceGroupSwapchainCreateInfoKHX where
        sizeOf ~_ = #{size VkDeviceGroupSwapchainCreateInfoKHX}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkDeviceGroupSwapchainCreateInfoKHX}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf
                      (undefined :: VkDeviceGroupSwapchainCreateInfoKHX),
            I## a <- alignment
                      (undefined :: VkDeviceGroupSwapchainCreateInfoKHX)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkDeviceGroupSwapchainCreateInfoKHX##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkDeviceGroupSwapchainCreateInfoKHX## ba)
          | I## n <- sizeOf (undefined :: VkDeviceGroupSwapchainCreateInfoKHX)
            = IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkDeviceGroupSwapchainCreateInfoKHX where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf
                      (undefined :: VkDeviceGroupSwapchainCreateInfoKHX),
            I## a <- alignment
                      (undefined :: VkDeviceGroupSwapchainCreateInfoKHX)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkDeviceGroupSwapchainCreateInfoKHX##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkDeviceGroupSwapchainCreateInfoKHX## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr
          = fromForeignPtr## VkDeviceGroupSwapchainCreateInfoKHX##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkDeviceGroupSwapchainCreateInfoKHX## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkDeviceGroupSwapchainCreateInfoKHX## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkDeviceGroupSwapchainCreateInfoKHX## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkDeviceGroupSwapchainCreateInfoKHX where
        type VkSTypeMType VkDeviceGroupSwapchainCreateInfoKHX =
             VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupSwapchainCreateInfoKHX, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkDeviceGroupSwapchainCreateInfoKHX, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkDeviceGroupSwapchainCreateInfoKHX, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkDeviceGroupSwapchainCreateInfoKHX, sType}

instance {-# OVERLAPPING #-}
         HasVkPNext VkDeviceGroupSwapchainCreateInfoKHX where
        type VkPNextMType VkDeviceGroupSwapchainCreateInfoKHX = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupSwapchainCreateInfoKHX, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkDeviceGroupSwapchainCreateInfoKHX, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkDeviceGroupSwapchainCreateInfoKHX, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkDeviceGroupSwapchainCreateInfoKHX, pNext}

instance {-# OVERLAPPING #-}
         HasVkModes VkDeviceGroupSwapchainCreateInfoKHX where
        type VkModesMType VkDeviceGroupSwapchainCreateInfoKHX =
             VkDeviceGroupPresentModeFlagsKHX

        {-# NOINLINE vkModes #-}
        vkModes x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkDeviceGroupSwapchainCreateInfoKHX, modes})

        {-# INLINE vkModesByteOffset #-}
        vkModesByteOffset ~_
          = #{offset VkDeviceGroupSwapchainCreateInfoKHX, modes}

        {-# INLINE readVkModes #-}
        readVkModes p
          = peekByteOff p #{offset VkDeviceGroupSwapchainCreateInfoKHX, modes}

        {-# INLINE writeVkModes #-}
        writeVkModes p
          = pokeByteOff p #{offset VkDeviceGroupSwapchainCreateInfoKHX, modes}

instance Show VkDeviceGroupSwapchainCreateInfoKHX where
        showsPrec d x
          = showString "VkDeviceGroupSwapchainCreateInfoKHX {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkModes = " . showsPrec d (vkModes x) . showChar '}'

-- | Success codes: 'VK_SUCCESS', 'VK_TIMEOUT', 'VK_NOT_READY', 'VK_SUBOPTIMAL_KHR'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_DEVICE_LOST', 'VK_ERROR_OUT_OF_DATE_KHR', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkAcquireNextImage2KHX
--   >     ( VkDevice device
--   >     , const VkAcquireNextImageInfoKHX* pAcquireInfo
--   >     , uint32_t* pImageIndex
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.0/man/html/vkAcquireNextImage2KHX.html vkAcquireNextImage2KHX registry at www.khronos.org>
foreign import ccall unsafe "vkAcquireNextImage2KHX"
               vkAcquireNextImage2KHX ::
               VkDevice -- ^ device
                        ->
                 Ptr VkAcquireNextImageInfoKHX -- ^ pAcquireInfo
                                               -> Ptr Word32 -- ^ pImageIndex
                                                             -> IO VkResult

pattern VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHX =
        VkStructureType 1000060008

pattern VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHX =
        VkStructureType 1000060009

pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHX =
        VkStructureType 1000060011

pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHX =
        VkStructureType 1000060012

-- | Allow images with VK_IMAGE_CREATE_BIND_SFR_BIT_KHX
--
--   bitpos = @0@
pattern VK_SWAPCHAIN_CREATE_BIND_SFR_BIT_KHX ::
        VkSwapchainCreateFlagBitsKHR

pattern VK_SWAPCHAIN_CREATE_BIND_SFR_BIT_KHX =
        VkSwapchainCreateFlagBitsKHR 1
