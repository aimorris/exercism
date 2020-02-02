module Acronym (abbreviate) where

import Data.Array (elemIndex, filter)
import Data.Maybe (fromMaybe)
import Data.String.Common (joinWith, toUpper)
import Data.String.CodeUnits (fromCharArray, toCharArray)
import Data.Char.Unicode (isUpper)
import Data.String.Regex (Regex, split)
import Data.String.Regex.Unsafe (unsafeRegex)
import Data.String.Regex.Flags (global)
import Prelude (map, (==), (||), (<<<), ($))

whitespaceRegex :: Regex
whitespaceRegex = unsafeRegex "\\s" global

uppercaseOrHead :: Array Char -> Char -> Boolean
uppercaseOrHead y x = isUpper x || (fromMaybe 0 $ elemIndex x y) == 0

toLetters :: String -> Array String
toLetters = map fromCharArray <<< map filterUOH <<< map toCharArray <<< split whitespaceRegex
  where filterUOH y = filter (uppercaseOrHead y) y

abbreviate :: String -> String
abbreviate = toUpper <<< joinWith "" <<< toLetters
