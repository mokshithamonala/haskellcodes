add :: () -> Int
add () =
  let b = 5
  in b + 0

main :: IO ()
main = do
  print (add ())