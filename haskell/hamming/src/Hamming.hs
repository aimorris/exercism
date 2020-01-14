module Hamming (distance) where

distance :: String -> String -> Maybe Int
distance x y
  | length x /= length y = Nothing
  | otherwise = Just $ length $ filter id $ zipWith (/=) x y
