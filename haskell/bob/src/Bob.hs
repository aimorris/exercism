module Bob (responseFor) where

import Data.String.Utils
import Data.Char

responseFor :: String -> String
responseFor x
  | isNothing = "Fine. Be that way!"
  | isYelling && isQuestion = "Calm down, I know what I'm doing!"
  | isYelling = "Whoa, chill out!"
  | isQuestion = "Sure."
  | otherwise = "Whatever."
  where isYelling = map toUpper x == x && map toLower x /= x
        isQuestion = last (strip x) == '?'
        isNothing = strip x == ""
