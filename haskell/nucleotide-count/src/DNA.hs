module DNA (nucleotideCounts, Nucleotide(..)) where

import Data.Map (Map, fromList)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts xs = if filter (`elem` "ACGT") xs == xs
                        then Right $ fromList $ [ (A, count 'A' xs), (C, count 'C' xs), (G, count 'G' xs), (T, count 'T' xs) ]
                        else Left xs

count :: Char -> String -> Int
count x = length . filter (==x)
