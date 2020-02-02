module Diamond (rows) where

import Data.Array hiding (singleton)
import Data.Maybe (fromMaybe)
import Data.String.CodeUnits (toCharArray, singleton)
import Data.String.Utils (repeat)
import Prelude (map, ($), (*), (-), (<>))

alphabet :: Array Char
alphabet = toCharArray "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

repeatString :: Int -> String -> String
repeatString 0 _ = ""
repeatString n x = fromMaybe "" $ repeat n x

row :: Char -> Int -> String
row x 0 = (repeatString (numOfSpaces x 0) " ") <> "A" <> (repeatString (numOfSpaces x 0) " ")
row x y = (repeatString (numOfSpaces x y) " ") <> singleton (getChar y) <> (repeatString ((2*y)-1) " ") <> singleton (getChar y) <> (repeatString (numOfSpaces x y) " ")

getChar :: Int -> Char
getChar x = fromMaybe 'A' $ index alphabet x

numOfSpaces :: Char -> Int -> Int
numOfSpaces x y = (fromMaybe 0 $ elemIndex x alphabet) - y

topHalf :: Char -> Array String
topHalf 'A' = ["A"]
topHalf x = map (row x) (0..(fromMaybe 0 $ elemIndex x alphabet))

bottomHalf :: Char -> Array String
bottomHalf 'A' = []
bottomHalf x = drop 1 $ reverse $ topHalf x

rows :: Char -> Array String
rows x = (topHalf x) <> (bottomHalf x)
