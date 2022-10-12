import Data.Either

database :: [(Integer, String)]
database = [(1, "victor"),
            (2, "agnes"),
            (3, "gleisa"),
            (4, "glenio")]

greetUser :: Integer -> Maybe String
greetUser id =
    -- the first part is a string and the 2ns a maybe string
    -- so in order for the concatenation to work 
    -- it's necessary to have a mapping function to change the 
    -- 2nd part into a string and return again a Maybe String 

    -- mapToMaybe ("Hello " ++ ) (lookup id database)
    fmap  ("Hello " ++ ) (lookup id database)

square :: (Num a) => [a] -> [a]
square = map (\x -> x*x) 

triple :: (Num a) => [a] -> [a]
triple = map (*3)

join = map (++" victor")

-- it receives the string and the maybe string 
-- the maybe string here will be a string and will be 
-- concatenated with the string from the first part
-- in the end it returns the desired Maybe String
mapToMaybe :: (a -> b) -> (Maybe a -> Maybe b)
mapToMaybe func Nothing = Nothing
mapToMaybe func (Just string) = Just (func string)

-- generalMap :: (a -> b) -> f a -> f b

mapToEither :: (a -> b) -> Either a b -> Either a b
mapToEither func (Left l) = Left l
mapToEither func (Right r) = Right r