#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MagicHash             #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE Strict                #-}
{-# LANGUAGE TypeApplications      #-}
{-# LANGUAGE TypeFamilies          #-}
module Graphics.Vulkan.Types.Struct.VkSemaphoreGetFdInfoKHR
       (VkSemaphoreGetFdInfoKHR(..)) where
import           Foreign.Storable                                              (Storable (..))
import           GHC.Prim
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Internal
import           Graphics.Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlags (VkExternalSemaphoreHandleTypeFlagBits)
import           Graphics.Vulkan.Types.Enum.VkStructureType                    (VkStructureType)
import           Graphics.Vulkan.Types.Handles                                 (VkSemaphore)
import           System.IO.Unsafe                                              (unsafeDupablePerformIO)

-- | > typedef struct VkSemaphoreGetFdInfoKHR {
--   >     VkStructureType sType;
--   >     const void*                      pNext;
--   >     VkSemaphore                      semaphore;
--   >     VkExternalSemaphoreHandleTypeFlagBits handleType;
--   > } VkSemaphoreGetFdInfoKHR;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/man/html/VkSemaphoreGetFdInfoKHR.html VkSemaphoreGetFdInfoKHR registry at www.khronos.org>
data VkSemaphoreGetFdInfoKHR = VkSemaphoreGetFdInfoKHR## Addr##
                                                        ByteArray##

instance Eq VkSemaphoreGetFdInfoKHR where
        (VkSemaphoreGetFdInfoKHR## a _) == x@(VkSemaphoreGetFdInfoKHR## b _)
          = EQ == cmpBytes## (sizeOf x) a b

        {-# INLINE (==) #-}

instance Ord VkSemaphoreGetFdInfoKHR where
        (VkSemaphoreGetFdInfoKHR## a _) `compare`
          x@(VkSemaphoreGetFdInfoKHR## b _) = cmpBytes## (sizeOf x) a b

        {-# INLINE compare #-}

instance Storable VkSemaphoreGetFdInfoKHR where
        sizeOf ~_ = #{size VkSemaphoreGetFdInfoKHR}

        {-# INLINE sizeOf #-}
        alignment ~_ = #{alignment VkSemaphoreGetFdInfoKHR}

        {-# INLINE alignment #-}
        peek = peekVkData##

        {-# INLINE peek #-}
        poke = pokeVkData##

        {-# INLINE poke #-}

instance VulkanMarshalPrim VkSemaphoreGetFdInfoKHR where
        unsafeAddr (VkSemaphoreGetFdInfoKHR## a _) = a

        {-# INLINE unsafeAddr #-}
        unsafeByteArray (VkSemaphoreGetFdInfoKHR## _ b) = b

        {-# INLINE unsafeByteArray #-}
        unsafeFromByteArrayOffset off b
          = VkSemaphoreGetFdInfoKHR## (plusAddr## (byteArrayContents## b) off) b

        {-# INLINE unsafeFromByteArrayOffset #-}

instance VulkanMarshal VkSemaphoreGetFdInfoKHR where
        type StructFields VkSemaphoreGetFdInfoKHR =
             '["sType", "pNext", "semaphore", "handleType"] -- ' closing tick for hsc2hs
        type CUnionType VkSemaphoreGetFdInfoKHR = 'False -- ' closing tick for hsc2hs
        type ReturnedOnly VkSemaphoreGetFdInfoKHR = 'False -- ' closing tick for hsc2hs
        type StructExtends VkSemaphoreGetFdInfoKHR = '[] -- ' closing tick for hsc2hs

instance {-# OVERLAPPING #-}
         HasField "sType" VkSemaphoreGetFdInfoKHR where
        type FieldType "sType" VkSemaphoreGetFdInfoKHR = VkStructureType
        type FieldOptional "sType" VkSemaphoreGetFdInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkSemaphoreGetFdInfoKHR =
             #{offset VkSemaphoreGetFdInfoKHR, sType}
        type FieldIsArray "sType" VkSemaphoreGetFdInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset = #{offset VkSemaphoreGetFdInfoKHR, sType}

instance {-# OVERLAPPING #-}
         CanReadField "sType" VkSemaphoreGetFdInfoKHR where
        {-# NOINLINE getField #-}
        getField x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkSemaphoreGetFdInfoKHR, sType})

        {-# INLINE readField #-}
        readField p
          = peekByteOff p #{offset VkSemaphoreGetFdInfoKHR, sType}

instance {-# OVERLAPPING #-}
         CanWriteField "sType" VkSemaphoreGetFdInfoKHR where
        {-# INLINE writeField #-}
        writeField p
          = pokeByteOff p #{offset VkSemaphoreGetFdInfoKHR, sType}

instance {-# OVERLAPPING #-}
         HasField "pNext" VkSemaphoreGetFdInfoKHR where
        type FieldType "pNext" VkSemaphoreGetFdInfoKHR = Ptr Void
        type FieldOptional "pNext" VkSemaphoreGetFdInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkSemaphoreGetFdInfoKHR =
             #{offset VkSemaphoreGetFdInfoKHR, pNext}
        type FieldIsArray "pNext" VkSemaphoreGetFdInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset = #{offset VkSemaphoreGetFdInfoKHR, pNext}

instance {-# OVERLAPPING #-}
         CanReadField "pNext" VkSemaphoreGetFdInfoKHR where
        {-# NOINLINE getField #-}
        getField x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkSemaphoreGetFdInfoKHR, pNext})

        {-# INLINE readField #-}
        readField p
          = peekByteOff p #{offset VkSemaphoreGetFdInfoKHR, pNext}

instance {-# OVERLAPPING #-}
         CanWriteField "pNext" VkSemaphoreGetFdInfoKHR where
        {-# INLINE writeField #-}
        writeField p
          = pokeByteOff p #{offset VkSemaphoreGetFdInfoKHR, pNext}

instance {-# OVERLAPPING #-}
         HasField "semaphore" VkSemaphoreGetFdInfoKHR where
        type FieldType "semaphore" VkSemaphoreGetFdInfoKHR = VkSemaphore
        type FieldOptional "semaphore" VkSemaphoreGetFdInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "semaphore" VkSemaphoreGetFdInfoKHR =
             #{offset VkSemaphoreGetFdInfoKHR, semaphore}
        type FieldIsArray "semaphore" VkSemaphoreGetFdInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkSemaphoreGetFdInfoKHR, semaphore}

instance {-# OVERLAPPING #-}
         CanReadField "semaphore" VkSemaphoreGetFdInfoKHR where
        {-# NOINLINE getField #-}
        getField x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkSemaphoreGetFdInfoKHR, semaphore})

        {-# INLINE readField #-}
        readField p
          = peekByteOff p #{offset VkSemaphoreGetFdInfoKHR, semaphore}

instance {-# OVERLAPPING #-}
         CanWriteField "semaphore" VkSemaphoreGetFdInfoKHR where
        {-# INLINE writeField #-}
        writeField p
          = pokeByteOff p #{offset VkSemaphoreGetFdInfoKHR, semaphore}

instance {-# OVERLAPPING #-}
         HasField "handleType" VkSemaphoreGetFdInfoKHR where
        type FieldType "handleType" VkSemaphoreGetFdInfoKHR =
             VkExternalSemaphoreHandleTypeFlagBits
        type FieldOptional "handleType" VkSemaphoreGetFdInfoKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "handleType" VkSemaphoreGetFdInfoKHR =
             #{offset VkSemaphoreGetFdInfoKHR, handleType}
        type FieldIsArray "handleType" VkSemaphoreGetFdInfoKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkSemaphoreGetFdInfoKHR, handleType}

instance {-# OVERLAPPING #-}
         CanReadField "handleType" VkSemaphoreGetFdInfoKHR where
        {-# NOINLINE getField #-}
        getField x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkSemaphoreGetFdInfoKHR, handleType})

        {-# INLINE readField #-}
        readField p
          = peekByteOff p #{offset VkSemaphoreGetFdInfoKHR, handleType}

instance {-# OVERLAPPING #-}
         CanWriteField "handleType" VkSemaphoreGetFdInfoKHR where
        {-# INLINE writeField #-}
        writeField p
          = pokeByteOff p #{offset VkSemaphoreGetFdInfoKHR, handleType}

instance Show VkSemaphoreGetFdInfoKHR where
        showsPrec d x
          = showString "VkSemaphoreGetFdInfoKHR {" .
              showString "sType = " .
                showsPrec d (getField @"sType" x) .
                  showString ", " .
                    showString "pNext = " .
                      showsPrec d (getField @"pNext" x) .
                        showString ", " .
                          showString "semaphore = " .
                            showsPrec d (getField @"semaphore" x) .
                              showString ", " .
                                showString "handleType = " .
                                  showsPrec d (getField @"handleType" x) . showChar '}'
