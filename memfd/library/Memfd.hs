{-|
"memfd" (__mem__ory __f__ile __d__escriptor) lets us open pseudo-"files"
that are not actually stored in the "real" file system.
This feature is only available on Linux.

This module is a small FFI wrapper around the @memfd_create@ C system call.
Some documentation in this package is copied/paraphrased from the Linux
Programmer's Manual.
Run "man 2 memfd_create" to see the full documentation.
-}
module Memfd
  (
    {- * The create action -} create,
    {- * Basic options -} defaultCreateOptions, Name (..),
    {- * More options -} CreateOptions (..), OnExec (..), Sealing (..), FileSystem (..),
    {- * HugeTLB -} HugeTLBOptions (..), HugeTLBSize (..), supportedHugeTLBSizes,
  )
  where

import Memfd.Create (create)
import Memfd.CreateOptionsType (CreateOptions (..))
import Memfd.DefaultCreateOptions (defaultCreateOptions)
import Memfd.FileSystemType (FileSystem (..))
import Memfd.HugeTLBOptionsType (HugeTLBOptions (..))
import Memfd.HugeTLBSizeType (HugeTLBSize (..))
import Memfd.NameType (Name (..))
import Memfd.OnExecType (OnExec (..))
import Memfd.SealingType (Sealing (..))
import Memfd.SupportedHugeTLBSizes (supportedHugeTLBSizes)
