module AtbashCipher (decode, encode) where

import Data.String (length, take, drop)
import Data.String.Common (toLower)
import Data.Char.Unicode (isAlpha, isAlphaNum)
import Data.String.CodeUnits (fromCharArray, toCharArray)
import Data.Array (elemIndex, filter, index, reverse)
import Data.Maybe (Maybe (Just), fromMaybe)
import Prelude

alphabet :: Array Char
alphabet = toCharArray "abcdefghijklmnopqrstuvwxyz"

encodeChar :: Array Char -> Array Char -> Char -> Char
encodeChar a b x
  | isAlpha x = fromMaybe ' ' $ index b $ fromMaybe 0 $ elemIndex x a
  | otherwise = x

space :: String -> String
space str
  | length str <= 5 = str
  | otherwise = take 5 str <> " " <> space (drop 5 str)

translate :: Array Char -> Array Char -> String -> String
translate a b = fromCharArray <<< map (encodeChar a b) <<< filter isAlphaNum <<< toCharArray <<< toLower

encode :: String -> Maybe String
encode = Just <<< space <<< translate alphabet (reverse alphabet)

decode :: String -> Maybe String
decode = Just <<< translate (reverse alphabet) alphabet
