module Stack (Stack, empty, isEmpty, push, top, pop, main) where

newtype Stack a = Stk [a] deriving (Show)

empty :: Stack a
empty = Stk []

isEmpty :: Stack a -> Bool
isEmpty (Stk []) = True
isEmpty _        = False

push :: a -> Stack a -> Stack a
push x (Stk xs) = Stk (x:xs)

top :: Stack a -> a
top (Stk [])    = error "Stack.top: empty stack"
top (Stk (x:_)) = x

pop :: Stack a -> Stack a
pop (Stk [])     = error "Stack.pop: empty stack"
pop (Stk (_:xs)) = Stk xs

main :: IO ()
main = do
    putStrLn "--- Haskell Stack ADT Test ---"
    
    let s0 = empty
    putStrLn $ "Initial stack empty? " ++ show (isEmpty s0)
    
    let s1 = push 10 s0
    let s2 = push 20 s1
    let s3 = push 30 s2
    
    putStrLn $ "Stack after 3 pushes: " ++ show s3
    putStrLn $ "Current Top: " ++ show (top s3)
    
    let s4 = pop s3
    putStrLn $ "Stack after 1 pop: " ++ show s4
    putStrLn $ "New Top: " ++ show (top s4)
    
    putStrLn $ "Final stack empty? " ++ show (isEmpty s4)
