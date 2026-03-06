
add :: Int -> IO Int
add total =do
  putStrLn "Enter a number (o to finish):"
  input <- getLine
  let number = (read input :: Int)
  if number ==0
   then return total
   else add(total+number)

main :: IO ()
main =do
  putStrLn "Starting sum program ."
  finalSum <-add 0
  print finalSum