module Memfd.DefaultCreateOptions where

import Memfd.CreateOptionsType (CreateOptions(..))
import Memfd.FileSystemType (FileSystem (TemporaryFileSystem))
import Memfd.NameType (Name)
import Memfd.OnExecType (OnExec (RemainOpenOnExec))
import Memfd.SealingType (Sealing (DoNotAllowSealing))

{-| Default options for 'Memfd.create', corresponding to what you get what you
    use the C library and don't set any flags

* 'onExec' = 'RemainOpenOnExec'
* 'sealing' = 'DoNotAllowSealing'
* 'fileSystem' = 'TemporaryFileSystem'
-}
defaultCreateOptions :: Name -> CreateOptions
defaultCreateOptions x =
  CreateOptions
    { name = x
    , onExec = RemainOpenOnExec
    , sealing = DoNotAllowSealing
    , fileSystem = TemporaryFileSystem
    }
