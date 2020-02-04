module Diamond (diamond) where

import Data.List
import Data.Maybe
import Data.Char

alphabet :: String
alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

repeatString :: Int -> Char -> String
repeatString x = take x . repeat

charToString :: Char -> String
charToString c = [c]

row :: Char -> Char -> String
row thisRow topRow
  | thisRow == 'A' = outerSpaces ++ "A" ++ outerSpaces
  | otherwise = outerSpaces ++ charToString thisRow ++ innerSpaces ++ charToString thisRow ++ outerSpaces
  where outerNumOfSpaces = (fromJust $ elemIndex topRow alphabet) - (fromJust $ elemIndex thisRow alphabet)
        innerNumOfSpaces = (fromJust $ elemIndex thisRow alphabet) * 2 - 1
        outerSpaces = repeatString outerNumOfSpaces ' '
        innerSpaces = repeatString innerNumOfSpaces ' '

topHalf :: Char -> [String]
topHalf topRow = map (`row` topRow) ['A'..topRow]

bottomHalf :: Char -> [String]
bottomHalf = drop 1 . reverse . topHalf

diamond :: Char -> Maybe [String]
diamond c = if isAlpha c
              then Just $ (topHalf c) ++ (bottomHalf c)
              else Nothing
