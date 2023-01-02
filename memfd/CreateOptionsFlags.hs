{-# language BlockArguments #-}

module CreateOptionsFlags (createOptionsFlags) where

import CreateFlagsType (CreateFlags)
import CreateOptionsType (CreateOptions (..))
import FileSystemType (FileSystem (..))
import HugeTLBOptionsType (HugeTLBOptions (..))
import OnExecType (OnExec (RemainOpenOnExec, CloseOnExec))
import SealingType (Sealing (DoNotAllowSealing, AllowSealing))

import qualified CreateFlags as Flags

import Control.Monad (return)
import Control.Monad.Trans.State.Strict (State, execState, modify')
import Data.Maybe (Maybe (..))
import Data.Monoid (mempty, (<>))

createOptionsFlags :: CreateOptions -> CreateFlags
createOptionsFlags x = execState (setOptionFlags x) mempty

setOptionFlags :: CreateOptions -> State CreateFlags ()
setOptionFlags x =
  do
    case onExec x of
        CloseOnExec -> setFlags Flags.closeOnExec
        RemainOpenOnExec -> return ()

    case sealing x of
        AllowSealing -> setFlags Flags.allowSealing
        DoNotAllowSealing -> return ()

    case fileSystem x of
        TemporaryFileSystem -> return ()
        HugeTLBFileSystem y -> setHugeTLBFlags y

setHugeTLBFlags :: HugeTLBOptions -> State CreateFlags ()
setHugeTLBFlags x =
  do
    setFlags Flags.hugeTLB
    case x of
        DefaultHugeTLB -> return ()
        HugeTLBSize y ->
            case Flags.hugeTLBSize y of
                Nothing -> return ()
                Just z -> setFlags z

setFlags :: CreateFlags -> State CreateFlags ()
setFlags x = modify' (<> x)
