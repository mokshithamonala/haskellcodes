module Main where

hanoi :: Int -> String -> String -> String -> IO ()
hanoi 0 _ _ _ = return ()
hanoi n from to aux = do
    hanoi (n-1) from aux to
    putStrLn ("Move from " ++ from ++ " to " ++ to)
    hanoi (n-1) aux to from

main :: IO ()
main = do
    putStrLn "Enter number of disks:"
    n <- readLn
    hanoi n "A" "C" "B"