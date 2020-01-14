module CollatzConjecture (collatz) where

import Data.Maybe (Maybe (..))
import Data.Int (even)
import Data.List (List (..), length, (:))
import Prelude

collatz :: Int -> Maybe Int
collatz 1 = Just 0
collatz x
  | x <= 0 = Nothing
  | otherwise = Just $ length $ collatz' x

collatz' :: Int -> List Int
collatz' 1 = Nil
collatz' x
  | even x = (x / 2) : collatz' (x / 2)
  | otherwise = (3 * x + 1) : collatz' (3 * x + 1)
