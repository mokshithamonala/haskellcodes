module Main where

main :: IO ()
main = do
    let list = [1,2,3,4]

    -- head
    print (head list)

    -- tail
    print (tail list)

    -- null (check if empty)
    print (null list)

    -- prepend (add to front) using :
    let newList1 = 0 : list
    print newList1

    -- append (add to end) using ++
    let newList2 = list ++ [5]
    print newList2