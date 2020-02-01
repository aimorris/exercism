module PascalsTriangle (rows) where

import Data.Maybe (Maybe (..))
import Data.Array (drop, zipWith)
import Prelude

rows :: Maybe Int -> Maybe (Array (Array Int))
rows Nothing = Nothing
rows (Just n)
  | n < 0 = Nothing
  | n == 0 = Just []
  | otherwise = Just $ getRows [1] n

getRows :: Array Int -> Int -> Array (Array Int)
getRows last 1 = [last]
getRows last n = [last] <> getRows (newRow $ [0] <> last <> [0]) (n-1)
  where newRow thisRow = zipWith (+) thisRow (drop 1 thisRow)
