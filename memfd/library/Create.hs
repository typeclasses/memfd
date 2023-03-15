module Create where

import CreateFlagsType (CreateFlags(..))
import CreateOptionsType (CreateOptions(..))
import CreateOptionsFlags (createOptionsFlags)
import NameType (Name (..))

import Foreign.C as C (CInt (..), CUInt (..))
import Foreign.C.String (CString, withCString)
import System.IO (IO)
import System.Posix.Types (Fd (..))

{-| Creates an anonymous file

The file behaves like a regular file, and so can be modified, truncated,
memory-mapped, and so on. However, unlike a regular file, it lives in RAM and
has a volatile backing storage. Once all references to the file are dropped, it
is automatically released.
-}
create :: CreateOptions -> IO Fd
create x =
    withCString (nameString (name x)) \name' ->
    c_create name' (createOptionsFlags x)

foreign import ccall unsafe "memfd_create"
    c_create :: CString -> CreateFlags -> IO Fd
