module Sort.Quick (quickSort) where

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (head:rest) = smallerSorted ++ [head] ++ biggerSorted
  where smallerSorted = quickSort $ filter (<= head) rest
        biggerSorted = quickSort $ filter (>head) rest