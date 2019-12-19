module LeapYear (isLeapYear) where

isDiv :: Integer -> Integer -> Bool
isDiv x y = mod x y == 0

isLeapYear :: Integer -> Bool
isLeapYear year =  isDiv year 400 || isDiv year 4 && not (isDiv year 100)
