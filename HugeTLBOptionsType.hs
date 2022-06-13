module HugeTLBOptionsType where

import HugeTLBSizeType (HugeTLBSize)

data HugeTLBOptions =
  DefaultHugeTLB
  | HugeTLBSize HugeTLBSize
