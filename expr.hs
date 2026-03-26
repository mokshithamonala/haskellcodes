data Expr =
    Val Int
  | Add Expr Expr
  | Mul Expr Expr

eval (Val x) = x
eval (Add a b) = eval a + eval b
eval (Mul a b) = eval a * eval b

countOp (Val _) = 0
countOp (Add a b) = 1 + countOp a + countOp b
countOp (Mul a b) = 1 + countOp a + countOp b

inorder (Val x) = show x
inorder (Add a b) =
  "(" ++ inorder a ++ " + " ++ inorder b ++ ")"
inorder (Mul a b) =
  "(" ++ inorder a ++ " * " ++ inorder b ++ ")"

main = do
  let e = Add (Val 3) (Mul (Val 4) (Val 5))
  print ("Value", eval e)
  print("operators", countOp e)
  print ("Inorder", inorder e)