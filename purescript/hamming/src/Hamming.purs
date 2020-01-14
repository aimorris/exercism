module Hamming (distance) where

import Prelude
import Data.Maybe (Maybe (..))
import Data.Array as Array
import Data.String.CodeUnits as String

distance :: String -> String -> Maybe Int
distance x y
  | String.length x /= String.length y = Nothing
  | otherwise = Just (Array.length (Array.filter identity (Array.zipWith (/=) x' y')))
    where x' = String.toCharArray x
          y' = String.toCharArray y
