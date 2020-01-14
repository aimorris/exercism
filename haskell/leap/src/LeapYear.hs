module LeapYear (isLeapYear) where

isDiv :: Integer -> Integer -> Bool
isDiv x y = rem x y == 0

isLeapYear :: Integer -> Bool
isLeapYear year = isDiv year 4 && not (isDiv year 100) || isDiv year 400
