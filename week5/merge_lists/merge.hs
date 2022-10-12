sort2 [] y = [y] 
sort2 (x:xs) y = 
    if x > y then 
        y:x:xs 
    else x : sort2 xs y 

merge xs [] = xs
merge xs (y:ys) = 
    merge (sort2 xs y) ys 


main = 
    -- print (sort2 [1,2,3,5] 4 )
    print(merge [2,5,6] [1,3,4])