type Pos = (Int, Int)
origin :: Pos
origin = (0,0)

data Shape = Circle Float | Rect Float Float

area :: Shape -> Float
area (Circle r) = pi * r
 

-- State Machine exercise
-- S2 or S3 are accepted values 

data State = S0 | S1 | S2 | S3

accepts :: State -> String -> Bool
accepts S0 ('a':xs) = accepts S1 xs
accepts S0 ('b':xs) = accepts S2 xs
accepts S1 ('a':xs) = accepts S2 xs
accepts S1 ('b':xs) = accepts S3 xs
accepts S2 ('a':xs) = accepts S0 xs
accepts S2 ('b':xs) = accepts S2 xs
accepts S3 ('a':xs) = accepts S3 xs
accepts S3 ('b':xs) = accepts S0 xs
accepts S2 _ = True
accepts S3 _ = True 
accepts _ _ = False

decide :: String -> Bool
decide = accepts S0