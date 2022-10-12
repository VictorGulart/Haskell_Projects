f :: Int -> Int
f x = div x 2

-- Trying to understand the following expression
-- (\y -> f (y 4)) (\g -> div g 2)

-- Turning lambdas into functions
f2 y = f (y 4)

f3 g = div g 2

-- changing the calls to unserstand
-- this is whats happening in the end
-- f2 fg = f ( fg 4 )