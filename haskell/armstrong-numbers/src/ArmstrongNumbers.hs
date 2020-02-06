module ArmstrongNumbers (armstrong) where

armstrong :: Integral a => a -> Bool
armstrong x = sum (map (^(length $ toDigits x)) (toDigits x)) == x

toDigits :: Integral a => a -> [a]
toDigits 0 = []
toDigits x = toDigits (x `quot` 10) ++ [x `rem` 10]
