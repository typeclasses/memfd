module DefaultCreateOptions where

import CreateOptionsType (CreateOptions(..))
import FileSystemType (FileSystem (TemporaryFileSystem))
import NameType (Name)
import OnExecType (OnExec (RemainOpenOnExec))
import SealingType (Sealing (DoNotAllowSealing))

defaultCreateOptions :: Name -> CreateOptions
defaultCreateOptions x =
  CreateOptions
    { name = x
    , onExec = RemainOpenOnExec
    , sealing = DoNotAllowSealing
    , fileSystem = TemporaryFileSystem
    }
