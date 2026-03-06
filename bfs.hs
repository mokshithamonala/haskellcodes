module Graph (Graph, empty, addEdge, dfs, bfs, main) where

import qualified Data.Map as M
import qualified Data.Set as S

type Graph a = M.Map a [a]

-- 2. Initialize an empty graph
empty :: Graph a
empty = M.empty

addEdge :: (Ord a) => a -> a -> Graph a -> Graph a
addEdge u v g = M.insertWith (++) u [v] (M.insertWith (++) v [] g)

dfs :: (Ord a) => a -> Graph a -> [a]
dfs start g = reverse $ explore [start] S.empty []
  where
    explore [] _ visitedOrder = visitedOrder
    explore (x:xs) visited visitedOrder

        | S.member x visited = explore xs visited visitedOrder
        | otherwise = 
            let neighbors = M.findWithDefault [] x g
            in explore (neighbors ++ xs) (S.insert x visited) (x : visitedOrder)

bfs :: (Ord a) => a -> Graph a -> [a]
bfs start g = reverse $ explore [start] S.empty []
  where
    explore [] _ visitedOrder = visitedOrder
    explore (x:xs) visited visitedOrder

        | S.member x visited = explore xs visited visitedOrder
        | otherwise = 
            let neighbors = M.findWithDefault [] x g
            in explore (xs ++ neighbors) (S.insert x visited) (x : visitedOrder)

main :: IO ()
main = do
    putStrLn "--- Graph ADT (Adjacency List) Test ---"
    
    {- 
       Building a Graph:
       1 -> 2, 1 -> 3
       2 -> 4
       3 -> 4
       4 -> 1 (Cycle)
    -}
    let g = addEdge 4 1 . addEdge 3 4 . addEdge 2 4 . addEdge 1 3 . addEdge 1 2 $ empty
    
    putStrLn $ "Adjacency List: " ++ show g
    
    let dfsResult = dfs 1 g
    putStrLn $ "DFS Traversal starting from 1: " ++ show dfsResult
    
    let bfsResult = bfs 1 g
    putStrLn $ "BFS Traversal starting from 1: " ++ show bfsResult