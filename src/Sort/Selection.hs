module Sort.Selection (selectionSort) where
import Data.List (minimum, delete)

selectionSort :: (Ord a) => [a] -> [a]
selectionSort [] = []
selectionSort xs = (:) smallestInList . selectionSort $ delete smallestInList xs
  where smallestInList = minimum xs