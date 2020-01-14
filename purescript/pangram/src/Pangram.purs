module Pangram (isPangram) where

import Data.Set as Set
import Data.String as String
import Data.String.CodeUnits as StringCodeUnits

isPangram :: String -> Boolean
isPangram str = Set.subset (Set.fromFoldable alphabetArray) (Set.fromFoldable strArray)
  where alphabetArray = StringCodeUnits.toCharArray "abcdefghijklmnopqrstuvwxyz"
        strArray      = StringCodeUnits.toCharArray (String.toLower str)
