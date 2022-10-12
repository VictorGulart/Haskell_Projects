import Control.Monad
sumList:: [Int] -> Int
sumList [] = 0 
sumList (x:xs) = x + sumList xs

sumLists:: [Int] -> [Int] -> [Int]
-- sums the values of the lists
sumLists [] [] = []
sumLists (x:xs) (y:ys) = x + y: sumLists xs ys 


scalarProduct xs ys = sum [ x*y | x<-xs, y <- ys ] 

go = do 
    line <- getLine
    if line == "q"
    then return quit
    else go

main = forever go 
    