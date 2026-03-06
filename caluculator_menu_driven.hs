main :: IO ()
main = do
    putStrLn "\n--- MENU ---"
    putStrLn "1. ADD  2. SUB  3. MUL  4. DIV  5. EXIT"
    putStrLn "Enter Choice:"  -- Using putStrLn instead of putStr
    choice <- getLine
    
    if choice == "5"
        then putStrLn "Goodbye!"
        else do
            putStrLn "Enter Number 1:"
            n1 <- readLn
            putStrLn "Enter Number 2:"
            n2 <- readLn
            
            case choice of
                "1" -> print (n1 + n2)
                "2" -> print (n1 - n2)
                "3" -> print (n1 * n2)
                "4" -> print (n1 / n2)
                _   -> putStrLn "Invalid Option"
            
            main -- Recursively call main to repeat the menu
