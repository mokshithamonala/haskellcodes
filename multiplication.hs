main :: IO ()
main = do
    putStrLn "Enter a number:"
    n <- readLn
    printTable n 1

printTable :: Int -> Int -> IO ()
printTable n i
    | i > 10 = return ()
    | otherwise = do
        putStrLn (show n ++ " x " ++ show i ++ " = " ++ show (n * i))
        printTable n (i + 1)

main :: IO ()
main = do
   putStrLn "Enter a  number:"
   n <-readLn
   putStrLn "Enter a range:"
   n <-readLn
  rgrvdvfrfr4