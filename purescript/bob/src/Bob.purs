module Bob (hey) where

import Prelude
import Data.String.Common (trim)
import Data.Array (last)
import Data.String (toLower, toUpper)
import Data.String.CodeUnits (toCharArray)
import Data.Maybe (Maybe (..))

hey :: String -> String
hey x
  | trim x == "" = "Fine. Be that way!"
  | (toUpper x == x) && (toLower x /= x) = "Whoa, chill out!"
  | last (toCharArray x) == Just '?' = "Sure."
  | otherwise = "Whatever."
