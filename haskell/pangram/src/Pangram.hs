module Pangram (isPangram) where

import Data.Set as Set
import Data.Char

isPangram :: String -> Bool
isPangram = isSubsetOf (fromList ['a'..'z']) . Set.map toLower . fromList
