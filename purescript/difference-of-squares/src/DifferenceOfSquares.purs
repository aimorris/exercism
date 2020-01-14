module DifferenceOfSquares
  ( differenceOfSquares
  , squareOfSum
  , sumOfSquares
  ) where

import Prelude (map, (-))
import Data.Array
import Data.Int (pow)
import Data.Foldable (sum)

squareOfSum :: Int -> Int
squareOfSum x = pow (sum (1..x)) 2

sumOfSquares :: Int -> Int
sumOfSquares x = sum (map (\y -> pow y 2) (1..x))

differenceOfSquares :: Int -> Int
differenceOfSquares x = squareOfSum x - sumOfSquares x
