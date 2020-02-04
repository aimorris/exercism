module Triangle (TriangleType(..), triangleType) where

import Data.Set

data TriangleType = Equilateral
                  | Isosceles
                  | Scalene
                  | Illegal
                  deriving (Eq, Show)

findKind :: (Num a, Ord a) => [a] -> TriangleType
findKind x = case length x of
  1 -> Equilateral
  2 -> Isosceles
  3 -> Scalene
  _ -> Illegal

triangleType :: (Num a, Ord a) => a -> a -> a -> TriangleType
triangleType s1 s2 s3
  | s1 <= 0 || s2 <= 0 || s3 <= 0 = Illegal
  | s1 + s2 < s3 || s2 + s3 < s1 || s3 + s1 < s2 = Illegal
  | otherwise = findKind $ toList $ fromList [s1, s2, s3]
