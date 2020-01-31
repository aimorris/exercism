module DNA (toRNA) where

nucTranslate :: Char -> Either Char Char
nucTranslate x = case x of
  'G' -> Right 'C'
  'C' -> Right 'G'
  'T' -> Right 'A'
  'A' -> Right 'U'
  _ -> Left x

toRNA :: String -> Either Char String
toRNA = mapM nucTranslate
