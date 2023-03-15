module CreateOptionsType where

import FileSystemType (FileSystem)
import NameType (Name)
import OnExecType (OnExec)
import SealingType (Sealing)

import Prelude (Eq, Ord, Show)

data CreateOptions =
  CreateOptions
    { name :: Name
    , onExec :: OnExec
    , sealing :: Sealing
    , fileSystem :: FileSystem
    }
  deriving stock (Eq, Ord, Show)
