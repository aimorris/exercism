module Robot
    ( Bearing(East,North,South,West)
    , bearing
    , coordinates
    , mkRobot
    , move
    ) where

data Bearing = North
             | East
             | South
             | West
             deriving (Eq, Show, Enum)

data Robot = Robot Bearing (Integer, Integer) deriving Show

bearing :: Robot -> Bearing
bearing (Robot dir _) = dir

coordinates :: Robot -> (Integer, Integer)
coordinates (Robot _ (x, y)) = (x, y)

mkRobot :: Bearing -> (Integer, Integer) -> Robot
mkRobot = Robot

right :: Bearing -> Bearing
right West = North
right x = succ x

left :: Bearing -> Bearing
left North = West
left x = pred x

oneMove :: Robot -> Char -> Robot
oneMove (Robot dir (x, y)) inst = case inst of
  'R' -> Robot (right dir) (x, y)
  'L' -> Robot (left dir) (x, y)
  'A' -> case dir of
    North -> Robot dir (x, y + 1)
    East -> Robot dir (x + 1, y)
    South -> Robot dir (x, y - 1)
    West -> Robot dir (x - 1, y)

move :: Robot -> String -> Robot
move robot "" = robot
move robot (x:xs) = move (oneMove robot x) xs
