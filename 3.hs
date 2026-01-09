add :: Int -> Int -> IO ()
add x y = print (x + y)

main = do
  add 3 4