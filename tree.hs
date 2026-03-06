module Tree (Tree(..), empty, insert, search, main) where

data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Eq)

empty :: Tree a
empty = Empty

insert :: (Ord a) => a -> Tree a -> Tree a
insert x Empty = Node x Empty Empty
insert x (Node v left right)

    | x < v     = Node v (insert x left) right
    | x > v     = Node v left (insert x right)
    | otherwise = Node v left right -- Value already exists

search :: (Ord a) => a -> Tree a -> Bool
search _ Empty = False
search x (Node v left right)

    | x == v    = True
    | x < v     = search x left
    | otherwise = search x right

main :: IO ()
main = do
    putStrLn "--- Tree (BST) Insert & Search Test ---"
    
    let myTree = insert 40 . insert 20 . insert 70 . insert 30 . insert 50 $ empty
    
    putStrLn $ "Tree Structure: " ++ show myTree
    
    putStrLn $ "Searching for 30: " ++ show (search 30 myTree) -- Returns True
    
    putStrLn $ "Searching for 99: " ++ show (search 99 myTree) -- Returns False