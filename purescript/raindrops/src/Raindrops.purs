module Raindrops (raindrops) where

import Prelude (show, (<>), (==))
import Data.Int (rem)
import Data.String (null)

raindrops :: Int -> String
raindrops x = if null str then show x else str
  where pling = "Pling"
        plang = "Plang"
        plong = "Plong"
        str = (if multipleOf x 3 then pling else "") <> (if multipleOf x 5 then plang else "") <> (if multipleOf x 7 then plong else "")
        multipleOf num mult = num `rem` mult == 0
