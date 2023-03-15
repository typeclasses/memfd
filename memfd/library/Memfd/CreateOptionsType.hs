module Memfd.CreateOptionsType where

import Memfd.FileSystemType (FileSystem)
import Memfd.NameType (Name)
import Memfd.OnExecType (OnExec)
import Memfd.SealingType (Sealing)

import Prelude (Eq, Ord, Show)

data CreateOptions =
  CreateOptions
    { name :: Name
    , onExec :: OnExec
    , sealing :: Sealing
    , fileSystem :: FileSystem
    }
  deriving stock (Eq, Ord, Show)
