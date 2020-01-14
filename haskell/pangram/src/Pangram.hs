module Pangram (isPangram) where
  
import qualified Data.Set as Set
import qualified Data.Char as Char

isPangram :: String -> Bool
isPangram = Set.isSubsetOf (Set.fromList ['a'..'z']) . Set.fromList . map Char.toLower
