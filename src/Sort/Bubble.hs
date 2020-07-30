module Sort.Bubble (bubbleSort) where

bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort xs = iterateBubbleSort xs 0
  where iterateBubbleSort :: (Ord a) => [a] -> Int -> [a]
        iterateBubbleSort xs i
          | i == (length xs) = xs
          | otherwise = iterateBubbleSort (swap xs) (i + 1)
        swap :: (Ord a) => [a] -> [a]
        swap (x:y:xs)
          | x > y = y : swap (x:xs)
          | otherwise = x : swap (y:xs)
        swap (x) = (x)
