module Sort.Insertion (insertionSort) where

insertionSort :: Ord a => [a] -> [a]
insertionSort [] = []
insertionSort (x:xs) = insert x (insertionSort xs)
  where insert :: Ord a => a -> [a] -> [a]
        insert x [] = [x]
        insert x (y:ys)
          | x < y = x:y:ys
          | otherwise = y:(insert x ys)