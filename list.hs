module Main where

-- List ADT
data List a = Empty | Cons a (List a)
    deriving Show

-- null
isNull :: List a -> Bool
isNull Empty = True
isNull _     = False

-- head
headList :: List a -> a
headList (Cons x _) = x

-- tail
tailList :: List a -> List a
tailList (Cons _ xs) = xs

-- append
append :: List a -> List a -> List a
append Empty ys       = ys
append (Cons x xs) ys = Cons x (append xs ys)

main :: IO ()
main = do
    let list = Cons 1 (Cons 2 Empty)
    print list
    print (headList list)
    print (tailList list)
    print (isNull list)