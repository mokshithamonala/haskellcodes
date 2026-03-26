import Control.Applicative

validateName n =
  if length n > 0 then Right n
  else Left "Invalid name"

validateAge a =
  if a >= 18 then Right a
  else Left "Age must be >= 18"

form name age =
  (,) <$> validateName name <*> validateAge age

main = do
  print (form "John" 20)
  print (form "" 15)