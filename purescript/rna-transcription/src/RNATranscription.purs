module RNATranscription (toRNA) where

import Data.String.CodeUnits as String
import Data.Maybe (Maybe (..))
import Data.Traversable (traverse)
import Prelude

nucleotide :: Char -> Maybe Char
nucleotide x = case x of
  'G' -> Just 'C'
  'C' -> Just 'G'
  'T' -> Just 'A'
  'A' -> Just 'U'
  _ -> Nothing

toRNA :: String -> Maybe String
toRNA = map String.fromCharArray <<< traverse nucleotide <<< String.toCharArray
