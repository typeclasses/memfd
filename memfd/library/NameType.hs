module NameType where

import Data.String (IsString, String)
import Prelude (Eq, Ord, Show)

{-| The name of an anonymous file

The name is used as a filename and will be displayed as the target of the
corresponding symbolic link in the directory @\/proc\/self\/fd\/@.
The displayed name is always prefixed with "memfd:" and serves only for
debugging purposes.
Names do not affect the behavior of the file descriptor, and as such
multiple files can have the same name without any side effects.
-}
newtype Name = NameString{ nameString :: String }
    deriving newtype IsString
    deriving stock (Eq, Ord, Show)
