module CollatzConjecture (collatz) where

import Data.List

collatz :: Integer -> Maybe Integer
collatz 1 = Just 0
collatz n
  | n < 1 = Nothing
  | otherwise = Just $ genericLength $ collatz' n

collatz' :: Integer -> [Integer]
collatz' 1 = []
collatz' x
  | even x = 1 : collatz' (x `div` 2)
  | otherwise = 1 : collatz' (3 * x + 1)
