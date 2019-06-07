{-# LANGUAGE DataKinds        #-}
{-# LANGUAGE DeriveGeneric    #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE PolyKinds        #-}
{-# LANGUAGE RecordWildCards  #-}
{-# LANGUAGE Strict           #-}
{-# LANGUAGE TypeApplications #-}
module Lib.Vulkan.Vertex
  ( Vertex (..), vertIBD, vertIADs
  ) where


import qualified Control.Monad.ST                         as ST
import           GHC.Generics                             (Generic)
import           Graphics.Vulkan.Core_1_0
import           Graphics.Vulkan.Marshal.Create
import           Graphics.Vulkan.Marshal.Create.DataFrame
import           Numeric.DataFrame
import qualified Numeric.DataFrame.ST                     as ST


-- | Preparing Vertex data to make an interleaved array.
data Vertex = Vertex
  { pos   :: Vec2f
  , color :: Vec3f
  } deriving (Eq, Show, Generic)

-- We need an instance of PrimBytes to fit Vertex into a DataFrame.
-- Luckily, Generics can do it for us.
instance PrimBytes Vertex


vertIBD :: VkVertexInputBindingDescription
vertIBD = createVk
  $  set @"binding" 0
  &* set @"stride"  (bSizeOf @Vertex undefined)
  &* set @"inputRate" VK_VERTEX_INPUT_RATE_VERTEX

-- We can use DataFrames to keep several vulkan structures in a contiguous
-- memory areas, so that we can pass a pointer to a DataFrame directly into
-- a vulkan function with no copy.
--
-- However, we must make sure the created DataFrame is pinned!
vertIADs :: Vector VkVertexInputAttributeDescription 2
vertIADs
  | Dict <- inferVkPrimBytes @VkVertexInputAttributeDescription
  = ST.runST $ do
    mv <- ST.newPinnedDataFrame
    ST.writeDataFrame mv 0 . scalar $ createVk
        $  set @"location" 0
        &* set @"binding" 0
        &* set @"format" VK_FORMAT_R32G32_SFLOAT
        &* set @"offset" (bFieldOffsetOf @"pos" @Vertex undefined)
    ST.writeDataFrame mv 1 . scalar $ createVk
        $  set @"location" 1
        &* set @"binding" 0
        &* set @"format" VK_FORMAT_R32G32B32_SFLOAT
        &* set @"offset" (bFieldOffsetOf @"color" @Vertex undefined)
                          -- Now we can use bFieldOffsetOf derived
                          -- in PrimBytes via Generics. How cool is that!
    ST.unsafeFreezeDataFrame mv
