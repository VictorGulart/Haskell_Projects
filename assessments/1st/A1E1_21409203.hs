module A1E1_21409203 (quadruple, isPalindrome, halve, log10, find, factorial) where

myDrop _ [] = []
myDrop 0 xs = xs
myDrop n (x:xs) = myDrop (n-1) xs

myTake _ [] = []
myTake 0 _ = []
myTake n (x:xs) = x:myTake (n-1) xs


-- Returns a number x times 4
quadruple :: Num a => a -> a
quadruple x = x * 4

-- Checks if list is palindrome
isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [a] = True
isPalindrome xs
  | head xs == last xs = isPalindrome (init (tail xs))
  | otherwise = False

-- Divides an array into two, returns a tuple 
-- containing both arrays
halve :: [a] -> ([a], [a])
halve [] = ([], [])
halve xs = (myTake (div (length xs) 2) xs, myDrop (div (length xs) 2) xs)

halve2 xs = do
-- for easier understanding
    let ys = myTake (div (length xs) 2) xs
    let zs = myDrop (div (length xs) 2) xs
    (ys, zs) 

log2 :: Integral a => a -> a
log2 1 = 0
log2 x = do 
    1 + log2 (quot x 10)

log10 :: Integral a => a -> a
-- Version similar to log2
log10 1 = 0
log10 x = do 
    1 + log10 (quot x 10)

log10_2 :: Integral a => a -> a
-- Using change of base
log10_2 1 = 0
log10_2 x = do 
    quot (log2 x) (log2 10)

goFind :: (Eq a) => Int -> a -> [a] -> Int
goFind _ _ [] = -1
goFind i y (x:xs) =
    if y == x then i else goFind (i+1) y xs 

find :: (Eq a) => a -> [a] -> Int 
find y xs = 
    -- using tail optimization 
    goFind 0 y xs 

find2 :: (Num t1, Eq t2) => t2 -> [t2] -> t1
find2 y xs =
    -- Same as the 1st find but all in one
    go 0 y xs where
        go _ _ [] = -1
        go i y (x:xs) | y == x = i
                      | otherwise = go (i+1) y xs
 
find3 :: (Num a, Eq a) => a -> [a] -> Int
find3 y [] = -1
find3 y xs = do 
    -- Not recursive (exhaustive)
    -- Using list comprehension and zip
    let arr = [i | (x', i) <- zip xs [0..], x' == y]
    if length arr == 0 then -1
    else
        arr!!0

factorial :: Int -> Int
factorial n =
    go 1 n where
        go s n' | n' == 0 = 0
        go s n' | n' == 1 = s
        go s n' | otherwise =
            go (s*n') (n'-1) 

factorial2 :: Int -> Int
-- simple  version
factorial2 0 = 1
factorial2 1 = 1
factorial2 n = 
    factorial2 (n-1) * n

factorial3 :: Int -> Int
factorial3 n =
    -- Using product
    product [1..n]

       