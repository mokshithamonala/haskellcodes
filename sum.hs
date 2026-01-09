sumThree :: Int -> Int -> Int -> Int
sumThree a b c = a + b + c

main :: IO ()
main = do
  print (sumThree 10 20 30)
