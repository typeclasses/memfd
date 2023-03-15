module Memfd.SupportedHugeTLBSizes where

import Data.List qualified as List
import Data.Maybe (isJust)
import Memfd.CreateFlags qualified as Flags
import Memfd.HugeTLBSizeType (HugeTLBSize)
import Prelude (enumFrom, minBound)

{-| List of hugetlb sizes that are supported by your platform
-}
supportedHugeTLBSizes :: [HugeTLBSize]
supportedHugeTLBSizes =
    List.filter (\x -> isJust (Flags.hugeTLBSize x)) (enumFrom minBound)
