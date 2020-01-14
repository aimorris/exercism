module Anagram (anagramsFor) where

import Data.List
import Data.Char

isAnagram :: String -> String -> Bool
isAnagram x y = x' /= y' && sort x' == sort y'
  where (x', y') = (map toLower x, map toLower y)

anagramsFor :: String -> [String] -> [String]
anagramsFor word list = filter (isAnagram word) list
