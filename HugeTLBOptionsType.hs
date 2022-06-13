{-# language DerivingStrategies #-}

module HugeTLBOptionsType where

import HugeTLBSizeType (HugeTLBSize)

import Prelude (Eq, Ord, Show)

data HugeTLBOptions =
  DefaultHugeTLB
  | HugeTLBSize HugeTLBSize
  deriving stock (Eq, Ord, Show)
