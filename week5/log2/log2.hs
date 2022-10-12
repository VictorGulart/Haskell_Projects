module Log (
    log2, log10
) where

log2 :: Integer -> Integer
log2 1 = 0
log2 x = do 
    1 + log2 (quot x 2)

log10 1 = 0
log10 x = do
    quot (log2 x) (log2 10)
    
main = do 
    print (log10 1000)