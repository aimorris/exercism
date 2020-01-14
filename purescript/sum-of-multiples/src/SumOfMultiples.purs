module SumOfMultiples (sumOfMultiples) where

import Prelude
import Data.Array (filter, range)
import Data.Int (rem)
import Data.Foldable (any, sum)

sumOfMultiples :: Array Int -> Int -> Int
sumOfMultiples x y = sum (filter (multipleOf x) (range 1 (y-1)) )
  where multipleOf w z = any (\i -> z `rem` i == 0) w
