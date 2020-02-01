module Etl (transform) where

import Data.Array (concatMap)
import Data.Map (Map, fromFoldable, toUnfoldable)
import Data.Tuple (Tuple (..))
import Data.Char.Unicode (toLower)
import Prelude (map, (<<<))

type Old = Map Int (Array Char)
type New = Map Char Int

transform :: Old -> New
transform = fromFoldable <<< concatMap transformation <<< toUnfoldable
  where transformation (Tuple val chars) = map (\x -> Tuple (toLower x) val) chars
