#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MagicHash             #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE Strict                #-}
{-# LANGUAGE TypeApplications      #-}
{-# LANGUAGE TypeFamilies          #-}
module Graphics.Vulkan.Types.Struct.VkMemoryFdPropertiesKHR
       (VkMemoryFdPropertiesKHR(..)) where
import           Foreign.Storable                           (Storable (..))
import           GHC.Base                                   (Addr##, ByteArray##,
                                                             byteArrayContents##,
                                                             plusAddr##)
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Internal
import           Graphics.Vulkan.Types.Enum.VkStructureType (VkStructureType)
import           System.IO.Unsafe                           (unsafeDupablePerformIO)

-- | > typedef struct VkMemoryFdPropertiesKHR {
--   >     VkStructureType sType;
--   >     void*                            pNext;
--   >     uint32_t                         memoryTypeBits;
--   > } VkMemoryFdPropertiesKHR;
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html##VkMemoryFdPropertiesKHRVkMemoryFdPropertiesKHR registry at www.khronos.org>
data VkMemoryFdPropertiesKHR = VkMemoryFdPropertiesKHR## Addr##
                                                        ByteArray##

instance Eq VkMemoryFdPropertiesKHR where
        (VkMemoryFdPropertiesKHR## a _) == x@(VkMemoryFdPropertiesKHR## b _)
          = EQ == cmpBytes## (sizeOf x) a b

        {-# INLINE (==) #-}

instance Ord VkMemoryFdPropertiesKHR where
        (VkMemoryFdPropertiesKHR## a _) `compare`
          x@(VkMemoryFdPropertiesKHR## b _) = cmpBytes## (sizeOf x) a b

        {-# INLINE compare #-}

instance Storable VkMemoryFdPropertiesKHR where
        sizeOf ~_ = #{size VkMemoryFdPropertiesKHR}

        {-# INLINE sizeOf #-}
        alignment ~_ = #{alignment VkMemoryFdPropertiesKHR}

        {-# INLINE alignment #-}
        peek = peekVkData##

        {-# INLINE peek #-}
        poke = pokeVkData##

        {-# INLINE poke #-}

instance VulkanMarshalPrim VkMemoryFdPropertiesKHR where
        unsafeAddr (VkMemoryFdPropertiesKHR## a _) = a

        {-# INLINE unsafeAddr #-}
        unsafeByteArray (VkMemoryFdPropertiesKHR## _ b) = b

        {-# INLINE unsafeByteArray #-}
        unsafeFromByteArrayOffset off b
          = VkMemoryFdPropertiesKHR## (plusAddr## (byteArrayContents## b) off) b

        {-# INLINE unsafeFromByteArrayOffset #-}

instance VulkanMarshal VkMemoryFdPropertiesKHR where
        type StructFields VkMemoryFdPropertiesKHR =
             '["sType", "pNext", "memoryTypeBits"] -- ' closing tick for hsc2hs
        type CUnionType VkMemoryFdPropertiesKHR = 'False -- ' closing tick for hsc2hs
        type ReturnedOnly VkMemoryFdPropertiesKHR = 'True -- ' closing tick for hsc2hs
        type StructExtends VkMemoryFdPropertiesKHR = '[] -- ' closing tick for hsc2hs

instance {-# OVERLAPPING #-}
         HasField "sType" VkMemoryFdPropertiesKHR where
        type FieldType "sType" VkMemoryFdPropertiesKHR = VkStructureType
        type FieldOptional "sType" VkMemoryFdPropertiesKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "sType" VkMemoryFdPropertiesKHR =
             #{offset VkMemoryFdPropertiesKHR, sType}
        type FieldIsArray "sType" VkMemoryFdPropertiesKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset = #{offset VkMemoryFdPropertiesKHR, sType}

instance {-# OVERLAPPING #-}
         CanReadField "sType" VkMemoryFdPropertiesKHR where
        {-# NOINLINE getField #-}
        getField x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkMemoryFdPropertiesKHR, sType})

        {-# INLINE readField #-}
        readField p
          = peekByteOff p #{offset VkMemoryFdPropertiesKHR, sType}

instance {-# OVERLAPPING #-}
         CanWriteField "sType" VkMemoryFdPropertiesKHR where
        {-# INLINE writeField #-}
        writeField p
          = pokeByteOff p #{offset VkMemoryFdPropertiesKHR, sType}

instance {-# OVERLAPPING #-}
         HasField "pNext" VkMemoryFdPropertiesKHR where
        type FieldType "pNext" VkMemoryFdPropertiesKHR = Ptr Void
        type FieldOptional "pNext" VkMemoryFdPropertiesKHR = 'False -- ' closing tick for hsc2hs
        type FieldOffset "pNext" VkMemoryFdPropertiesKHR =
             #{offset VkMemoryFdPropertiesKHR, pNext}
        type FieldIsArray "pNext" VkMemoryFdPropertiesKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset = #{offset VkMemoryFdPropertiesKHR, pNext}

instance {-# OVERLAPPING #-}
         CanReadField "pNext" VkMemoryFdPropertiesKHR where
        {-# NOINLINE getField #-}
        getField x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkMemoryFdPropertiesKHR, pNext})

        {-# INLINE readField #-}
        readField p
          = peekByteOff p #{offset VkMemoryFdPropertiesKHR, pNext}

instance {-# OVERLAPPING #-}
         CanWriteField "pNext" VkMemoryFdPropertiesKHR where
        {-# INLINE writeField #-}
        writeField p
          = pokeByteOff p #{offset VkMemoryFdPropertiesKHR, pNext}

instance {-# OVERLAPPING #-}
         HasField "memoryTypeBits" VkMemoryFdPropertiesKHR where
        type FieldType "memoryTypeBits" VkMemoryFdPropertiesKHR = Word32
        type FieldOptional "memoryTypeBits" VkMemoryFdPropertiesKHR =
             'False -- ' closing tick for hsc2hs
        type FieldOffset "memoryTypeBits" VkMemoryFdPropertiesKHR =
             #{offset VkMemoryFdPropertiesKHR, memoryTypeBits}
        type FieldIsArray "memoryTypeBits" VkMemoryFdPropertiesKHR = 'False -- ' closing tick for hsc2hs

        {-# INLINE fieldOptional #-}
        fieldOptional = False

        {-# INLINE fieldOffset #-}
        fieldOffset
          = #{offset VkMemoryFdPropertiesKHR, memoryTypeBits}

instance {-# OVERLAPPING #-}
         CanReadField "memoryTypeBits" VkMemoryFdPropertiesKHR where
        {-# NOINLINE getField #-}
        getField x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkMemoryFdPropertiesKHR, memoryTypeBits})

        {-# INLINE readField #-}
        readField p
          = peekByteOff p #{offset VkMemoryFdPropertiesKHR, memoryTypeBits}

instance {-# OVERLAPPING #-}
         CanWriteField "memoryTypeBits" VkMemoryFdPropertiesKHR where
        {-# INLINE writeField #-}
        writeField p
          = pokeByteOff p #{offset VkMemoryFdPropertiesKHR, memoryTypeBits}

instance Show VkMemoryFdPropertiesKHR where
        showsPrec d x
          = showString "VkMemoryFdPropertiesKHR {" .
              showString "sType = " .
                showsPrec d (getField @"sType" x) .
                  showString ", " .
                    showString "pNext = " .
                      showsPrec d (getField @"pNext" x) .
                        showString ", " .
                          showString "memoryTypeBits = " .
                            showsPrec d (getField @"memoryTypeBits" x) . showChar '}'
