module Triangle (Triangle(Equilateral, Isosceles, Scalene), triangleKind) where

import Data.Either (Either (..))
import Data.Set as Set
import Prelude
import Data.Array as Array

data Triangle = Equilateral
              | Isosceles
              | Scalene
derive instance eqTriangle :: Eq Triangle

instance showTriangle :: Show Triangle
  where show Equilateral = "Equilateral"
        show Isosceles = "Isosceles"
        show Scalene = "Scalene"

findKind :: Array Int -> Either String Triangle
findKind x = case Array.length x of
  1 -> Right Equilateral
  2 -> Right Isosceles
  3 -> Right Scalene
  _ -> Left "Not a triangle"

triangleKind :: Int -> Int -> Int -> Either String Triangle
triangleKind s1 s2 s3
  | s1 < 1 || s2 < 1 || s3 < 1 = Left "Invalid lengths"
  | s1 + s2 < s3 || s2 + s3 < s1 || s3 + s1 < s2 = Left "Violates inequality"
  | otherwise = findKind $ Set.toUnfoldable $ Set.fromFoldable [s1, s2, s3]
