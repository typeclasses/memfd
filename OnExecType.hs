{-# language DerivingStrategies #-}

module OnExecType where

import Prelude (Eq, Ord, Enum, Bounded, Show)

data OnExec =
    CloseOnExec
      -- ^ The file descriptor will automatically be closed during a successful execve
  | RemainOpenOnExec
  deriving stock (Eq, Ord, Enum, Bounded, Show)
