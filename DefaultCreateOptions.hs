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

-- ^
-- Default options for 'Memfd.create', corresponding to what you get what you use the C library and don't set any flags.
--
-- * 'onExec' = 'RemainOpenOnExec'
-- * 'sealing' = 'DoNotAllowSealing'
-- * 'fileSystem' = 'TemporaryFileSystem'
