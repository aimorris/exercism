module AllYourBase (rebase) where

import Data.Maybe (Maybe (..))
import Data.Array (head, mapWithIndex, reverse, snoc)
import Prelude (otherwise, pure, ($), (*), (<), (<<<), (==), (>=), (||))
import Data.Foldable (any, sum)
import Data.Int (pow, quot, rem)

type Base = Int

rebase :: Base -> Base -> Array Int -> Maybe (Array Int)
rebase b1 b2 num
  | b1 < 2 || b2 < 2 = Nothing
  | num == [] = Nothing
  | head num == Just 0 = Nothing
  | any (_ < 0) num = Nothing
  | any (_ >= b1) num = Nothing
  | otherwise = pure $ fromInt b2 $ toInt b1 num

toInt :: Base -> Array Int -> Int
toInt b = sum <<< mapWithIndex power <<< reverse
  where power i x = (pow b i) * x

fromInt :: Base -> Int -> Array Int
fromInt b num =
  let
    quotNum = quot num b
  in
    if quotNum == 0
      then [num]
      else snoc (fromInt b quotNum) (rem num b)
