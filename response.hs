import Data.List

rules =
  [("hi", "hello"),
   ("how are you", "iamfine"),
   ("bye", "good bye")]

respond msg = case lookup msg rules of
  Just r -> r
  Nothing -> "unknown"

chat [] = return ()
chat (x:xs) = do
  putStrLn ("user: " ++ x)
  putStrLn ("bot: " ++ respond x)
  chat xs

main = do
  let msgs = ["hi", "how are you", "bye"]
  chat msgs