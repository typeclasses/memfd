module CreateOptionsType where

import FileSystemType (FileSystem)
import NameType (Name)
import OnExecType (OnExec)
import SealingType (Sealing)

data CreateOptions =
  CreateOptions
    { name :: Name
    , onExec :: OnExec
    , sealing :: Sealing
    , fileSystem :: FileSystem
    }
