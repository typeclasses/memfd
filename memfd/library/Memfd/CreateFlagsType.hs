module Memfd.CreateFlagsType where

import Data.Bits ((.|.))
import Data.Monoid (Monoid (..))
import Data.Semigroup (Semigroup (..))
import Foreign.C.Types (CUInt (..))

newtype CreateFlags = CreateFlags CUInt

instance Semigroup CreateFlags where
    CreateFlags x <> CreateFlags y = CreateFlags (x .|. y)

instance Monoid CreateFlags where
    mempty = CreateFlags 0
