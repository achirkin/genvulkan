#include "vulkan/vulkan.h"

{-# LANGUAGE DataKinds            #-}
{-# LANGUAGE FlexibleContexts     #-}
{-# LANGUAGE FlexibleInstances    #-}
{-# LANGUAGE MagicHash            #-}
{-# LANGUAGE PatternSynonyms      #-}
{-# LANGUAGE Strict               #-}
{-# LANGUAGE TypeFamilies         #-}
{-# LANGUAGE TypeOperators        #-}
{-# LANGUAGE UnboxedTuples        #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE UnliftedFFITypes     #-}
{-# LANGUAGE ViewPatterns         #-}
module Graphics.Vulkan.Ext.VK_EXT_sampler_filter_minmax
       (-- * Vulkan extension: @VK_EXT_sampler_filter_minmax@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Jeff Bolz @jbolz@
        --
        -- author: @NV@
        --
        -- type: @device@
        --
        -- Extension number: @131@
        --
        -- Required extensions: 'VK_KHR_get_physical_device_properties2'.
        --

        -- ** Required extensions: 'VK_KHR_get_physical_device_properties2'.
        VkSamplerReductionModeCreateInfoEXT(..),
        VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT(..),
        VK_EXT_SAMPLER_FILTER_MINMAX_SPEC_VERSION,
        pattern VK_EXT_SAMPLER_FILTER_MINMAX_SPEC_VERSION,
        VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME,
        pattern VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES_EXT,
        pattern VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO_EXT,
        pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT_EXT)
       where
import           Data.Int
import           Data.Void                        (Void)
import           Data.Word
import           Foreign.C.String                 (CString)
import           Foreign.Storable                 (Storable (..))
import           GHC.ForeignPtr                   (ForeignPtr (..),
                                                   ForeignPtrContents (..),
                                                   newForeignPtr_)
import           GHC.Prim
import           GHC.Ptr                          (Ptr (..))
import           GHC.Types                        (IO (..), Int (..))
import           Graphics.Vulkan.Base
import           Graphics.Vulkan.Common
import           Graphics.Vulkan.Core
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Internal
import           Graphics.Vulkan.StructMembers
import           System.IO.Unsafe                 (unsafeDupablePerformIO)

data VkSamplerReductionModeCreateInfoEXT = VkSamplerReductionModeCreateInfoEXT## ByteArray##

instance Eq VkSamplerReductionModeCreateInfoEXT where
        (VkSamplerReductionModeCreateInfoEXT## a) ==
          (VkSamplerReductionModeCreateInfoEXT## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkSamplerReductionModeCreateInfoEXT where
        (VkSamplerReductionModeCreateInfoEXT## a) `compare`
          (VkSamplerReductionModeCreateInfoEXT## b) = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkSamplerReductionModeCreateInfoEXT where
        sizeOf ~_ = #{size VkSamplerReductionModeCreateInfoEXT}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkSamplerReductionModeCreateInfoEXT}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf
                      (undefined :: VkSamplerReductionModeCreateInfoEXT),
            I## a <- alignment
                      (undefined :: VkSamplerReductionModeCreateInfoEXT)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkSamplerReductionModeCreateInfoEXT##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr) (VkSamplerReductionModeCreateInfoEXT## ba)
          | I## n <- sizeOf (undefined :: VkSamplerReductionModeCreateInfoEXT)
            = IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal VkSamplerReductionModeCreateInfoEXT where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf
                      (undefined :: VkSamplerReductionModeCreateInfoEXT),
            I## a <- alignment
                      (undefined :: VkSamplerReductionModeCreateInfoEXT)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkSamplerReductionModeCreateInfoEXT##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkSamplerReductionModeCreateInfoEXT## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr
          = fromForeignPtr## VkSamplerReductionModeCreateInfoEXT##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkSamplerReductionModeCreateInfoEXT## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr (VkSamplerReductionModeCreateInfoEXT## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData x@(VkSamplerReductionModeCreateInfoEXT## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkSamplerReductionModeCreateInfoEXT where
        type VkSTypeMType VkSamplerReductionModeCreateInfoEXT =
             VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkSamplerReductionModeCreateInfoEXT, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkSamplerReductionModeCreateInfoEXT, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkSamplerReductionModeCreateInfoEXT, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkSamplerReductionModeCreateInfoEXT, sType}

instance {-# OVERLAPPING #-}
         HasVkPNext VkSamplerReductionModeCreateInfoEXT where
        type VkPNextMType VkSamplerReductionModeCreateInfoEXT = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkSamplerReductionModeCreateInfoEXT, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkSamplerReductionModeCreateInfoEXT, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkSamplerReductionModeCreateInfoEXT, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkSamplerReductionModeCreateInfoEXT, pNext}

instance {-# OVERLAPPING #-}
         HasVkReductionMode VkSamplerReductionModeCreateInfoEXT where
        type VkReductionModeMType VkSamplerReductionModeCreateInfoEXT =
             VkSamplerReductionModeEXT

        {-# NOINLINE vkReductionMode #-}
        vkReductionMode x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkSamplerReductionModeCreateInfoEXT, reductionMode})

        {-# INLINE vkReductionModeByteOffset #-}
        vkReductionModeByteOffset ~_
          = #{offset VkSamplerReductionModeCreateInfoEXT, reductionMode}

        {-# INLINE readVkReductionMode #-}
        readVkReductionMode p
          = peekByteOff p #{offset VkSamplerReductionModeCreateInfoEXT, reductionMode}

        {-# INLINE writeVkReductionMode #-}
        writeVkReductionMode p
          = pokeByteOff p #{offset VkSamplerReductionModeCreateInfoEXT, reductionMode}

instance Show VkSamplerReductionModeCreateInfoEXT where
        showsPrec d x
          = showString "VkSamplerReductionModeCreateInfoEXT {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkReductionMode = " .
                            showsPrec d (vkReductionMode x) . showChar '}'

data VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT = VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT## ByteArray##

instance Eq VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT where
        (VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT## a) ==
          (VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT## b)
          = EQ == cmpImmutableContent a b

        {-# INLINE (==) #-}

instance Ord VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT where
        (VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT## a) `compare`
          (VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT## b)
          = cmpImmutableContent a b

        {-# INLINE compare #-}

instance Storable VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT
         where
        sizeOf ~_
          = #{size VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT}

        {-# INLINE sizeOf #-}
        alignment ~_
          = #{alignment VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT}

        {-# INLINE alignment #-}
        peek (Ptr addr)
          | I## n <- sizeOf
                      (undefined :: VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT),
            I## a <- alignment
                      (undefined :: VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT)
            =
            IO
              (\ s ->
                 case newAlignedPinnedByteArray## n a s of
                     (## s1, mba ##) -> case copyAddrToByteArray## addr mba 0## n s1 of
                                          s2 -> case unsafeFreezeByteArray## mba s2 of
                                                    (## s3, ba ##) -> (## s3,
                                                                       VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT##
                                                                         ba ##))

        {-# INLINE peek #-}
        poke (Ptr addr)
          (VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT## ba)
          | I## n <- sizeOf
                      (undefined :: VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT)
            = IO (\ s -> (## copyByteArrayToAddr## ba 0## addr n s, () ##))

        {-# INLINE poke #-}

instance VulkanMarshal
           VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT
         where
        {-# INLINE newVkData #-}
        newVkData f
          | I## n <- sizeOf
                      (undefined :: VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT),
            I## a <- alignment
                      (undefined :: VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT)
            =
            IO
              (\ s0 ->
                 case newAlignedPinnedByteArray## n a s0 of
                     (## s1, mba ##) -> case unsafeFreezeByteArray## mba s1 of
                                          (## s2, ba ##) -> case f (Ptr (byteArrayContents## ba)) of
                                                              IO k -> case k s2 of
                                                                          (## s3, () ##) -> (## s3,
                                                                                             VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT##
                                                                                               ba ##))

        {-# INLINE unsafePtr #-}
        unsafePtr (VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT## ba)
          = Ptr (byteArrayContents## ba)

        {-# INLINE fromForeignPtr #-}
        fromForeignPtr
          = fromForeignPtr## VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT##

        {-# INLINE toForeignPtr #-}
        toForeignPtr (VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT## ba)
          = do ForeignPtr addr (PlainForeignPtr r) <- newForeignPtr_
                                                        (Ptr (byteArrayContents## ba))
               IO
                 (\ s -> (## s, ForeignPtr addr (MallocPtr (unsafeCoerce## ba) r) ##))

        {-# INLINE toPlainForeignPtr #-}
        toPlainForeignPtr
          (VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT## ba)
          = IO
              (\ s ->
                 (## s,
                    ForeignPtr (byteArrayContents## ba)
                      (PlainPtr (unsafeCoerce## ba)) ##))

        {-# INLINE touchVkData #-}
        touchVkData
          x@(VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT## ba)
          = IO (\ s -> (## touch## x (touch## ba s), () ##))

instance {-# OVERLAPPING #-}
         HasVkSType VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT where
        type VkSTypeMType VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT
             = VkStructureType

        {-# NOINLINE vkSType #-}
        vkSType x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, sType})

        {-# INLINE vkSTypeByteOffset #-}
        vkSTypeByteOffset ~_
          = #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, sType}

        {-# INLINE readVkSType #-}
        readVkSType p
          = peekByteOff p #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, sType}

        {-# INLINE writeVkSType #-}
        writeVkSType p
          = pokeByteOff p #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, sType}

instance {-# OVERLAPPING #-}
         HasVkPNext VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT where
        type VkPNextMType VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT
             = Ptr Void

        {-# NOINLINE vkPNext #-}
        vkPNext x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, pNext})

        {-# INLINE vkPNextByteOffset #-}
        vkPNextByteOffset ~_
          = #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, pNext}

        {-# INLINE readVkPNext #-}
        readVkPNext p
          = peekByteOff p #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, pNext}

        {-# INLINE writeVkPNext #-}
        writeVkPNext p
          = pokeByteOff p #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, pNext}

instance {-# OVERLAPPING #-}
         HasVkFilterMinmaxSingleComponentFormats
           VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT
         where
        type VkFilterMinmaxSingleComponentFormatsMType
               VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT
             = VkBool32

        {-# NOINLINE vkFilterMinmaxSingleComponentFormats #-}
        vkFilterMinmaxSingleComponentFormats x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, filterMinmaxSingleComponentFormats})

        {-# INLINE vkFilterMinmaxSingleComponentFormatsByteOffset #-}
        vkFilterMinmaxSingleComponentFormatsByteOffset ~_
          = #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, filterMinmaxSingleComponentFormats}

        {-# INLINE readVkFilterMinmaxSingleComponentFormats #-}
        readVkFilterMinmaxSingleComponentFormats p
          = peekByteOff p #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, filterMinmaxSingleComponentFormats}

        {-# INLINE writeVkFilterMinmaxSingleComponentFormats #-}
        writeVkFilterMinmaxSingleComponentFormats p
          = pokeByteOff p #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, filterMinmaxSingleComponentFormats}

instance {-# OVERLAPPING #-}
         HasVkFilterMinmaxImageComponentMapping
           VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT
         where
        type VkFilterMinmaxImageComponentMappingMType
               VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT
             = VkBool32

        {-# NOINLINE vkFilterMinmaxImageComponentMapping #-}
        vkFilterMinmaxImageComponentMapping x
          = unsafeDupablePerformIO
              (peekByteOff (unsafePtr x) #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, filterMinmaxImageComponentMapping})

        {-# INLINE vkFilterMinmaxImageComponentMappingByteOffset #-}
        vkFilterMinmaxImageComponentMappingByteOffset ~_
          = #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, filterMinmaxImageComponentMapping}

        {-# INLINE readVkFilterMinmaxImageComponentMapping #-}
        readVkFilterMinmaxImageComponentMapping p
          = peekByteOff p #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, filterMinmaxImageComponentMapping}

        {-# INLINE writeVkFilterMinmaxImageComponentMapping #-}
        writeVkFilterMinmaxImageComponentMapping p
          = pokeByteOff p #{offset VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT, filterMinmaxImageComponentMapping}

instance Show VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT
         where
        showsPrec d x
          = showString "VkPhysicalDeviceSamplerFilterMinmaxPropertiesEXT {" .
              showString "vkSType = " .
                showsPrec d (vkSType x) .
                  showString ", " .
                    showString "vkPNext = " .
                      showsPrec d (vkPNext x) .
                        showString ", " .
                          showString "vkFilterMinmaxSingleComponentFormats = " .
                            showsPrec d (vkFilterMinmaxSingleComponentFormats x) .
                              showString ", " .
                                showString "vkFilterMinmaxImageComponentMapping = " .
                                  showsPrec d (vkFilterMinmaxImageComponentMapping x) . showChar '}'

pattern VK_EXT_SAMPLER_FILTER_MINMAX_SPEC_VERSION ::
        (Num a, Eq a) => a

pattern VK_EXT_SAMPLER_FILTER_MINMAX_SPEC_VERSION = 1

type VK_EXT_SAMPLER_FILTER_MINMAX_SPEC_VERSION = 1

pattern VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME :: CString

pattern VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME <-
        (is_VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME -> True)
  where VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME
          = _VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME

_VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME :: CString

{-# INLINE _VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME #-}
_VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME
  = Ptr "VK_EXT_sampler_filter_minmax\NUL"##

is_VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME :: CString -> Bool

{-# INLINE is_VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME #-}
is_VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME
  = (_VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME ==)

type VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME =
     "VK_EXT_sampler_filter_minmax"

pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES_EXT
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SAMPLER_FILTER_MINMAX_PROPERTIES_EXT
        = VkStructureType 1000130000

pattern VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO_EXT ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_SAMPLER_REDUCTION_MODE_CREATE_INFO_EXT =
        VkStructureType 1000130001

-- | Format can be used with min/max reduction filtering
--
--   bitpos = @16@
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT_EXT ::
        VkFormatFeatureFlagBits

pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT_EXT =
        VkFormatFeatureFlagBits 65536
