module Memfd.SupportedHugeTLBSizes where

import Memfd.HugeTLBSizeType

import qualified Memfd.CreateFlags as Flags

import Data.Maybe (isJust)
import Prelude (enumFrom, minBound)

import qualified Data.List as List

{-| List of hugetlb sizes that are supported by your platform
-}
supportedHugeTLBSizes :: [HugeTLBSize]
supportedHugeTLBSizes =
    List.filter (\x -> isJust (Flags.hugeTLBSize x)) (enumFrom minBound)
