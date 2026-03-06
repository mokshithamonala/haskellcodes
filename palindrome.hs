main :: IO ()
main = do
    putStrLn "Enter a string to check:"
    input <- getLine
    
    -- We compare the input string to its reversed version
    if input == reverse input
        then putStrLn "It is a palindrome!"
        else putStrLn "It is NOT a palindrome."
