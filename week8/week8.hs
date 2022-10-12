adder :: IO()
adder = do
    putStrLn "How many numbers would you like to add?"
    n <- getLine 
    let n' = read n :: Int
    y <- getNums n'
    print (y)

getNums 0 = return 0
getNums x = do
     i <- getLine
     total <- getNums (x-1)
     return (read i + total)
guesser = do
    let count = 3 
    let random = "15"
    putStrLn "Guess game!!" 
    putStrLn "The number has been chosen."

    guesses random
    -- result <- guesses random
    -- print ((++) "You win" result)
    -- print ("You win. The number was " ++ result)

guesses fixed = do
    putStr "Guess a number: "
    guess <- getLine

    if (guess == fixed) then
        putStrLn "Correct"
    else do 
        if (guess > fixed ) then 
            putStrLn "Large" 
        else 
            putStrLn "Small"

        guesses fixed