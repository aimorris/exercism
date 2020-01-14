module Anagram (anagramsFor) where

import Data.List
import Data.Char

anagramsFor :: String -> [String] -> [String]
anagramsFor word list = filter (\x -> sort (candidateList x) == sort candidate && candidateList x /= candidate) list
  where candidate = map toLower word
        candidateList x = map toLower x
