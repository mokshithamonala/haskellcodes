 import Data.List

 prices :: [Int]
 prices = [100, 110, 120, 90, 130, 80, 140]

 profit xs =
  maximum (zipWith (-) (tail xs) xs)

 dropDetect xs =
  filter (< -20) (zipWith (-) (tail xs) xs)

 movingAvg xs =
  map (\(a, b, c) -> (a + b + c) `div` 3)
  (zip3 xs (tail xs) (drop 2 xs))

 main = do
  print ("Max profit", profit prices)
  print ("Sudden drop", dropDetect prices)
  print ("Moving Avg", movingAvg prices)