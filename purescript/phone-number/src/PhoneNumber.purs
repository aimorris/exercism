module PhoneNumber (phoneNumber) where

import Data.Char.Unicode (digitToInt, isDigit)
import Data.Array (filter, index, length, takeEnd)
import Data.Maybe (Maybe (..), fromMaybe)
import Data.String.CodeUnits (toCharArray, fromCharArray)
import Data.Traversable (traverse)
import Prelude

phoneNumber :: String -> Maybe String
phoneNumber x = if validNumber
                  then Just $ fromCharArray $ numbers
                  else Nothing
  where numbers = takeEnd 10 $ filter isDigit $ toCharArray x
        fullNumbers = filter isDigit $ toCharArray x
        validNumber = if length fullNumbers > 10 && index fullNumbers 0 /= Just '1'
                        then false
                        else length numbers == 10 && validNDigit 0 && validNDigit 3
        validNDigit y = (fromMaybe 0 $ index digitArray y) > 1 && (fromMaybe 0 $ index digitArray y) < 10
        digitArray = fromMaybe [] $ traverse digitToInt numbers
