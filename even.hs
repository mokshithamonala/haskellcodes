main :: IO ()
main = do
    putStrLn "Enter a number:"
    input <- getLine
    let n = read input :: Int
    if even n
        then putStrLn "The number is Even"
        else putStrLn "The number is Odd"
