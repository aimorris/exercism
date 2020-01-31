module Grains (square, total) where

numOfGrains :: Integer -> Integer
numOfGrains n = 2^(n - 1)

square :: Integer -> Maybe Integer
square n
  | n > 64 || n < 1 = Nothing
  | otherwise = Just (numOfGrains n)

total :: Integer
total = (numOfGrains 65) - 1
