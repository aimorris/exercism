module Triangle (Triangle(Equilateral, Isosceles, Scalene), triangleKind) where

import Data.Either (Either (..))
import Data.Set as Set
import Prelude

data Triangle = Equilateral
              | Isosceles
              | Scalene
derive instance eqTriangle :: Eq Triangle

instance showTriangle :: Show Triangle
  where show Equilateral = "Equilateral"
        show Isosceles = "Isosceles"
        show Scalene = "Scalene"

triangleKind :: Int -> Int -> Int -> Either String Triangle
triangleKind s1 s2 s3 = findKind s1 s2 s3
  where triangleSet = Set.fromFoldable [s1, s2, s3]
        findKind :: Int -> Int -> Int -> Either String Triangle
        findKind x y z
          | x < 1 || y < 1 || z < 1 = Left "Invalid lengths"
          | x + y < z || y + z < x || z + x < y = Left "Violates inequality"
          | Set.size triangleSet == 1 = Right Equilateral
          | Set.size triangleSet == 2 = Right Isosceles
          | otherwise = Right Scalene
