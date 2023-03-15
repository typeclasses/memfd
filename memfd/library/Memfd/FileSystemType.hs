module Memfd.FileSystemType where

import Memfd.HugeTLBOptionsType (HugeTLBOptions)

import Prelude (Show, Eq, Ord, Show)

data FileSystem =
    TemporaryFileSystem
  | HugeTLBFileSystem HugeTLBOptions
  deriving stock (Eq, Ord, Show)
