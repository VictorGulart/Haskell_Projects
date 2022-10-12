-- defining exponentiation ^

import Prelude qualified as P
import Data.IntMap.Merge.Lazy (merge)

-- simple power
power :: P.Integer -> P.Integer -> P.Integer
power _ 0 = 1
power 0 _ = 0
power x y = x P.* (power x (y P.- 1))

-- more elaborated version
(^) :: P.Integer -> P.Integer -> P.Integer
(^) _ 0 = 1
(^) 0 _ = 0
(^) x y = x P.* ((^) x (y P.- 1))

main = do
  -- exp <- P.getLine
  -- let x = (P.read exp :: P.Integer)
  -- P.print (2 ^ x)
  P.print (power 5 2)