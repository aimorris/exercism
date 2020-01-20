module Isogram (isIsogram) where

import Data.Array (filter, nub)
import Data.String.CodeUnits (toCharArray)
import Data.String (toLower)
import Prelude (($), (==))
import Data.Char.Unicode (isAlpha)

isIsogram :: String -> Boolean
isIsogram x = nub array == array
  where array = filter isAlpha (toCharArray $ toLower x)
