import Distribution.Simple.Command (OptDescr(BoolOpt))
-- factorial function (using recursion)
fact x | x == 1 = 1
       | x /= 1 = x * fact(x-1)


-- fibonacci function (using recursion)
-- need to implement the return of the elements
fib n | n == 1 = 1
      | n /= 1 = n + fib(n-1)

get_odd ns = filter f ns
    where
        f :: Int -> Bool
        f i = i `mod` 2 == 0

-- using filter with lambda functions
get_odd2 :: Integral a => [a] -> [a]
get_odd2 ns = filter (\x -> mod x 2 == 0) ns
         
main = 
    -- print( sum [1..5] ) -- sum of all the intergers from 1 to 5 
--     print( fact(5) ) -- equals to 120
--     print( fib(5) ) -- equals to 15
    print( get_odd2([1..10]) )