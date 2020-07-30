module Sort.Shell (shellSort) where

import Sort.Insertion (insertionSort)
import Data.List (transpose)

columnize :: Int -> [a] -> [[a]]
columnize k = transpose . takeWhile (not . null) . map (take k) . iterate (drop k)

decolumnize :: [[a]] -> [a]
decolumnize = concat . transpose

-- Each phase of the Shell sort breaks the list into k columns, sorts each with an
-- insertion sort, then merges those columns back into a list.
shellSortPhase :: (Ord a) => Int -> [a] -> [a]
shellSortPhase k = decolumnize . map insertionSort . columnize k 

-- The full Shell sort, applying phases with arbitrarily large gap sizes according to
-- R. Sedgewick, J. Algorithms 7 (1986), 159-173
shellSort :: (Ord a) => [a] -> [a]
shellSort xs = foldr shellSortPhase xs gaps
    where gaps = takeWhile (< length xs) sedgewick
          sedgewick = concat [[9 * 2^n - 9 * 2^(n `div` 2) + 1,
                               8 * 2^(n+1) - 6 * 2^(n `div` 2) + 1] | n <- [0..]]