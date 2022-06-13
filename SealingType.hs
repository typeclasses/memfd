module SealingType where

data Sealing =
    AllowSealing
      -- ^ File seals can be applied to the file descriptor
  | DoNotAllowSealing
