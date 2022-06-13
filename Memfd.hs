-- | "memfd" (__mem__ory __f__ile __d__escriptor) lets us open pseudo-"files" that are not actually stored in the "real" file system. This feature is only available on Linux.
--
-- This module is a small FFI wrapper around the @memfd_create@ C system call. Some documentation in this package is copied/paraphrased from the Linux Programmer's Manual. Run "man 2 memfd_create" to see the full documentation.
--
module Memfd
  (
    create,
    CreateOptions (..),
    Name (..),
    OnExec (..),
    Sealing (..),
    FileSystem (..),
    HugeTLBOptions (..),
    HugeTLBSize (..),
  )
  where

import Create (create)
import CreateOptionsType (CreateOptions (..))
import FileSystemType (FileSystem (..))
import HugeTLBOptionsType (HugeTLBOptions (..))
import HugeTLBSizeType (HugeTLBSize (..))
import NameType (Name (..))
import OnExecType (OnExec (..))
import SealingType (Sealing (..))
