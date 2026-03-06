module Queue (Queue, empty, isEmpty, enqueue, front, dequeue, main) where

data Queue a = Q [a] [a] deriving (Show)

empty :: Queue a
empty = Q [] []

isEmpty :: Queue a -> Bool
isEmpty (Q [] []) = True
isEmpty _         = False

enqueue :: a -> Queue a -> Queue a
enqueue x (Q f b) = check (Q f (x:b))

front :: Queue a -> a
front (Q [] _)    = error "Queue.front: empty queue"
front (Q (x:_) _) = x

dequeue :: Queue a -> Queue a
dequeue (Q [] _)     = error "Queue.dequeue: empty queue"
dequeue (Q (_:f) b) = check (Q f b)

check :: Queue a -> Queue a
check (Q [] b) = Q (reverse b) []
check q        = q

-- Initialization and Test
main :: IO ()
main = do
    putStrLn "--- Queue ADT Test ---"
    let q0 = empty
    let q1 = enqueue "Alice" q0
    let q2 = enqueue "Bob" q1
    let q3 = enqueue "Charlie" q2
    
    putStrLn $ "Queue: " ++ show q3
    putStrLn $ "Front element: " ++ front q3
    
    let q4 = dequeue q3
    putStrLn $ "After one dequeue: " ++ show q4
    putStrLn $ "New front: " ++ front q4