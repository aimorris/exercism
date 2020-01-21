module TwelveDays (recite) where

recite :: Int -> Int -> [String]
recite start stop = map lyrics [start..stop]

lyrics :: Int -> String
lyrics x = "On the " ++ ordinal x ++ " day of Christmas my true love gave to me: " ++ gifts x

gifts :: Int -> String
gifts x = concatMap part [x, x-1 .. 1]
  where part 1 = "a Partridge in a Pear Tree."
        part 2 = "two Turtle Doves, and "
        part 3 = "three French Hens, "
        part 4 = "four Calling Birds, "
        part 5 = "five Gold Rings, "
        part 6 = "six Geese-a-Laying, "
        part 7 = "seven Swans-a-Swimming, "
        part 8 = "eight Maids-a-Milking, "
        part 9 = "nine Ladies Dancing, "
        part 10 = "ten Lords-a-Leaping, "
        part 11 = "eleven Pipers Piping, "
        part 12 = "twelve Drummers Drumming, "
        part _ = error "Number not between 1 and 12"

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
