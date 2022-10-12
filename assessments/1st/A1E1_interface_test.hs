-- To test your module, replace the fictitious student number "21345678" below with your student number.
-- To run, ensure this testfile as well as your module file "A1E1_<student_number>" are in the same directory.
import A1E1_21409203

main = do
  let t1expected = 12
  let t1 = quadruple 3
  
  let t2expected = True
  let t2 = isPalindrome [2, 16, 9, 16, 2]

  let t2bexpected = False
  let t2b = isPalindrome [1, 3, 5, 7]

  let t3expected = (['a', 'b', 'c'], ['d', 'e', 'f', 'g'])
  let t3 = halve ['a', 'b', 'c', 'd', 'e', 'f', 'g']

  let t4expected = 1
  let t4 = log10 16

  let t4bexpected = 3
  let t4b = log10 1234

  let t5expected = 0
  let t5 = find 'a' "application"

  let t5bexpected = 3
  let t5b = find 4 [1,2,3,4,5]

  let t6expected = 120
  let t6 = factorial 5
  

  putStrLn("quadruple 3 => " ++ show t1 ++ ", expected: " ++ show t1expected ++ ". As expected? " ++ show (t1 == t1expected))

  putStrLn("isPalindrome [2, 16, 9, 16, 2] => " ++ show t2 ++ ", expected: " ++ show t2expected ++ ". As expected? " ++ show (t2 == t2expected))

  putStrLn("isPalindrome [1, 3, 5, 7] => " ++ show t2b ++ ", expected: " ++ show t2bexpected ++ ". As expected? " ++ show (t2b == t2bexpected))

  putStrLn("halve ['a', 'b', 'c', 'd', 'e', 'f'] => " ++ show t3 ++ ", expected: " ++ show t3expected ++ ". As expected? " ++ show (t3 == t3expected))

  putStrLn("log10 16 =>  " ++ show t4 ++ ", expected: " ++ show t4expected ++ ". As expected? " ++ show (t4 == t4expected))

  putStrLn("log10 1234 => " ++ show t4b ++ ", expected: " ++ show t4bexpected ++ ". As expected? " ++ show (t4b == t4bexpected))

  putStrLn("find 'a' \"application\" => " ++ show t5 ++ ", expected: " ++ show t5expected ++ ". As expected? " ++ show (t5 == t5expected))

  putStrLn("find 4 [1,2,3,4,5] => " ++ show t5b ++ ", expected: " ++ show t5bexpected ++ ". As expected? " ++ show (t5b == t5bexpected))

  putStrLn("factorial 5 => " ++ show t6 ++ ", expected: " ++ show t6expected ++ ". As expected? " ++ show (t6 == t6expected))
