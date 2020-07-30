module Sort.Merge (mergeSort) where

mergeSort :: Ord a => [a] -> [a]
mergeSort [] = []
mergeSort [a] = [a]
mergeSort xs = merge (mergeSort (firstHalf xs)) (mergeSort (secondHalf xs))
    where firstHalf  xs = let { n = length xs } in take (div n 2) xs
          secondHalf xs = let { n = length xs } in drop (div n 2) xs
          merge :: Ord a => [a] -> [a] -> [a]
          merge xs [] = xs
          merge [] ys = ys
          merge (x:xs) (y:ys)
            | x <= y    = x:merge xs (y:ys)
            | otherwise = y:merge (x:xs) ys