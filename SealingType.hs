{-# language DerivingStrategies #-}

module SealingType where

import Prelude (Eq, Ord, Enum, Bounded, Show)

data Sealing =
    AllowSealing
      -- ^ File seals can be applied to the file descriptor
  | DoNotAllowSealing
  deriving stock (Eq, Ord, Enum, Bounded, Show)
