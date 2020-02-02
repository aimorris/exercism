module Allergies (allergicTo, list) where

import Data.Array (elem, filter)
import Data.Tuple (Tuple(..), fst, snd)
import Data.Int.Bits ((.&.))
import Prelude (map, ($), (==))

allergies :: Array (Tuple String Int)
allergies = [
  (Tuple "eggs" 1),
  (Tuple "peanuts" 2),
  (Tuple "shellfish" 4),
  (Tuple "strawberries" 8),
  (Tuple "tomatoes" 16),
  (Tuple "chocolate" 32),
  (Tuple "pollen" 64),
  (Tuple "cats" 128)
]

list :: Int -> Array String
list x = map fst $ filter match allergies
  where match y = (x .&. snd y) == snd y

allergicTo :: Int -> String -> Boolean
allergicTo x y = y `elem` list x
