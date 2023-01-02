{-# language DerivingStrategies #-}

module HugeTLBOptionsType where

import HugeTLBSizeType (HugeTLBSize)

import Prelude (Eq, Ord, Show)

data HugeTLBOptions =
  DefaultHugeTLB
      -- ^ Use the system default hugetlb page size
  | HugeTLBSize HugeTLBSize
      -- ^ Prefer the given hugetlb page size
  deriving stock (Eq, Ord, Show)

-- ^ Not every 'HugeTLBSizeType.HugeTLBSize' may be available on your platform. If you select an unsupported page size, the system default page size will be used instead. See 'Memfd.supportedHugeTLBSizes'.
