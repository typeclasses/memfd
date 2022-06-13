module OnExecType where

data OnExec =
    CloseOnExec
      -- ^ The file descriptor will automatically be closed during a successful execve
  | RemainOpenOnExec
