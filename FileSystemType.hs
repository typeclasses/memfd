module FileSystemType where

import HugeTLBOptionsType (HugeTLBOptions)

data FileSystem =
    TemporaryFileSystem
  | HugeTLBFileSystem HugeTLBOptions
