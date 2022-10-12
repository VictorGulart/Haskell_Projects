import System.Win32 (xBUTTON1)
oldBlood = 10
oldSpeed = 5


pickGift :: Int -> [Int] -> [Int]
pickGift x [] = []
pickGift x (y:ys) = x+y : pickGift x ys 

myMap :: (a -> a) -> [a] -> [a]
myMap f xs = [f(x) | x <- xs]




normFilter :: (a-> Bool) -> [a] -> [a]
normFilter f xs = [x | x <- xs, f (x)] 

recurFilter :: (a -> Bool ) -> [a] -> [a]
recurFilter f [] = []
recurFilter f (x:xs) | f x == True = x : recurFilter f xs
                     | otherwise = recurFilter f xs


addOne x = x + 1

mais :: Int -> Int -> Int
mais x 0 = x
mais x y = mais (addOne x) (y-1) 

-- myFoldr :: (a -> b -> b) -> b -> [a] -> a
-- myFoldr f y [] = 0
-- myFoldr f y (x:xs) = myFoldr

-- len xs = foldr (\_ n-> 1+n) 0 xs
len xs = foldr (\y -> (\n -> 1+n) ) 0 xs

mySum xs = foldr (+) 0 xs

main = do
    -- pickGift can be implemented with map
    -- print(pickGift 3 [oldBlood])
    -- print(myMap (+3) [oldBlood])
    -- print(recurFilter even [1,2,3,4])

    -- print(foldr mais 1 [1,2,3,4])

    print(len [1,2,3,4])