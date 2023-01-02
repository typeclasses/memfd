{-# language DerivingStrategies #-}

module HugeTLBSizeType where

import Prelude (Eq, Ord, Enum, Bounded, Show)

data HugeTLBSize =
    HugeTLB_64KB
  | HugeTLB_512KB
  | HugeTLB_1MB
  | HugeTLB_2MB
  | HugeTLB_8MB
  | HugeTLB_16MB
  | HugeTLB_32MB
  | HugeTLB_256MB
  | HugeTLB_512MB
  | HugeTLB_1GB
  | HugeTLB_2GB
  | HugeTLB_16GB
  deriving stock (Eq, Ord, Enum, Bounded, Show)

-- ^ These sizes may not all be available on your platform. See 'Memfd.supportedHugeTLBSizes'.
