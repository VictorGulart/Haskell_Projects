module A1E2_21409203 (merge, encrypt, decrypt) where

-- function to merge two sorted lists
merge:: (Ord a) => [a] -> [a] -> [a]
merge [] [] = [] 
merge xs [] = xs
merge [] ys = ys
merge xs ys = 
    if head xs < head ys then 
        head xs : merge (tail xs) ys
    else
        head ys : merge xs (tail ys) 

-- auxiliary function
find :: (Eq a) => a -> [a] -> Int 
find y xs =
    go 0 y xs where
        go _ _ [] = -1
        go i y (x:xs) | y == x = i
                      | otherwise = go (i+1) y xs
 

-- encrypting text using Ceaser's cypher
code = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890 "
encrypt :: [Char] -> Int -> [Char]
encrypt [] _ = []
encrypt xs 0 = xs
encrypt (x:xs) n = do
    let pos = find x code + n

    if pos > length code then do
        let new_pos = pos - length code
        (code!!new_pos) : encrypt xs n
    else do
        code!!pos : encrypt xs n
        
decrypt :: [Char] -> Int -> [Char]
decrypt [] _ = []
decrypt xs 0 = xs
decrypt (x:xs) n = do
    let pos = find x code - n

    if pos < 0 then do
        let new_pos = length code - abs pos
        (code!!new_pos) : decrypt xs n
    else do
        code!!pos : decrypt xs n

data Tree a = Leaf a | Node a (Tree a) (Tree a) deriving Show
-- the Node a (Tree a) (Tree a) tells us that the tree  
-- carries data on all of its nodes

instance Functor Tree where
    --fmap :: (a->b) -> Tree a -> Tree b
    fmap f (Leaf x) = Leaf (f x) 
    fmap f (Node a l r) = Node (f a) (fmap f l) (fmap f r)


-- just testing the tree
flatten :: Tree a -> [a]
flatten (Leaf x) = [x]
flatten (Node x l r) = flatten l ++ [x] ++ flatten r









