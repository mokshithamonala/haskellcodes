 type Tx = (String, Int)

 trs = [("credit", 5000),
       ("debit", 2000),
       ("debit", 7000)]

 balance [] = 0
 balance ((t, a) : xs)
  | t == "credit" = a + balance xs
  | otherwise = balance xs - a

 suspicious =
  filter (\(_, a) -> a > 5000)

 main = do
   print ("Balance", balance trs)
   print ("Suspicious", suspicious trs)