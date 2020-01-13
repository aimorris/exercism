module TwelveDays (recite) where

recite :: Int -> Int -> [String]
recite start stop = map (lyrics) [start..stop]

lyrics :: Int -> String
lyrics x = "On the " ++ ordinal x ++ " day of Christmas my true love gave to me: " ++ gifts x

gifts :: Int -> String
gifts x = case x of
  1 -> "a Partridge in a Pear Tree."
  2 -> "two Turtle Doves, and " ++ gifts (x - 1)
  3 -> "three French Hens, " ++ gifts (x - 1)
  4 -> "four Calling Birds, " ++ gifts (x - 1)
  5 -> "five Gold Rings, " ++ gifts (x - 1)
  6 -> "six Geese-a-Laying, " ++ gifts (x - 1)
  7 -> "seven Swans-a-Swimming, " ++ gifts (x - 1)
  8 -> "eight Maids-a-Milking, " ++ gifts (x - 1)
  9 -> "nine Ladies Dancing, " ++ gifts (x - 1)
  10 -> "ten Lords-a-Leaping, " ++ gifts (x - 1)
  11 -> "eleven Pipers Piping, " ++ gifts (x - 1)
  12 -> "twelve Drummers Drumming, " ++ gifts (x - 1)
  _ -> error "Number not between 1 and 12"

ordinal :: Int -> String
ordinal x = case x of
  1 -> "first"
  2 -> "second"
  3 -> "third"
  4 -> "fourth"
  5 -> "fifth"
  6 -> "sixth"
  7 -> "seventh"
  8 -> "eighth"
  9 -> "ninth"
  10 -> "tenth"
  11 -> "eleventh"
  12 -> "twelfth"
  _ -> error "Number not between 1 and 12"
