evens :: [Integer]
evens = [2, 4 ..] 

main :: IO ()
main = do
    print $ take 5 evens 