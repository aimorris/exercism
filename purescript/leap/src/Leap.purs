module Leap where

import Prelude

isDiv :: Int -> Int -> Boolean
isDiv x y = mod x y == 0

isLeapYear :: Int -> Boolean
isLeapYear year =  isDiv year 400 || isDiv year 4 && not (isDiv year 100)
