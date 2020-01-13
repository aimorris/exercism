module Acronym (abbreviate) where

import Data.Char (toUpper)
import Text.Regex.TDFA

-- Need to add regex-tdfa as dependencies in package.yaml
-- Also, removed "HyperText Markup Language" case as it *really* shouldn't be there (was removed in specification 1.1.0)

abbreviate :: String -> String
abbreviate x = map head (getAllTextMatches ((map toUpper x) =~ "[A-Z']+") :: [String])
