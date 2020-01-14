module Accumulate (accumulate) where

import Data.List (List (..))
import Prelude (map)

accumulate :: forall a b. (a -> b) -> List a -> List b
accumulate _ Nil = Nil
accumulate f x = map f x
