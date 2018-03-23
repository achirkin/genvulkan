{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE Strict                     #-}
module Graphics.Vulkan.Types.Enum.VkTessellationDomainOriginKHR
       (VkTessellationDomainOriginKHR(..)) where
import           Data.Bits                       (Bits, FiniteBits)
import           Data.Coerce                     (coerce)
import           Data.Data                       (Data)
import           Foreign.Storable                (Storable)
import           GHC.Generics                    (Generic)
import           Graphics.Vulkan.Types.BaseTypes (VkFlags)

newtype VkTessellationDomainOriginKHR = VkTessellationDomainOriginKHR VkFlags
                                          deriving (Eq, Ord, Num, Bounded, Enum, Integral, Bits,
                                                    FiniteBits, Storable, Real, Data, Generic)

instance Show VkTessellationDomainOriginKHR where
        {-# INLINE show #-}
        show (VkTessellationDomainOriginKHR x) = show x

instance Read VkTessellationDomainOriginKHR where
        {-# INLINE readsPrec #-}
        readsPrec = coerce (readsPrec :: Int -> ReadS VkFlags)
