module DataStructures.BinarySearchTree where

data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

singleton :: a -> Tree a
singleton x = Node x Empty Empty

insert :: (Ord a) => a -> Tree a -> Tree a
insert x Empty = singleton x
insert x (Node a left right)
  | x == a = Node x left right
  | x < a  = Node a (insert x left) right
  | x > a  = Node a left (insert x right)

delete :: (Ord a) => a -> Tree a -> Tree a
delete _ Empty = Empty
delete x (Node a left right)
  | x == a = deleteRoot (Node a left right)
  | x < a  = Node a (delete x right) right
  | x > a  = Node a left (delete x right)

isElemOf :: (Ord a) => a -> Tree a -> Bool
isElemOf x Empty = False
isElemOf x (Node a left right)
  | x == a = True
  | x < a  = isElemOf x left
  | x > a  = isElemOf x right

fromList :: Ord a => [a] -> Tree a
fromList xs = foldr insert Empty (reverse xs)

isEmpty :: Tree a -> Bool
isEmpty Empty = True
isEmpty _ = False

deleteRoot :: (Ord a) => Tree a -> Tree a
deleteRoot (Node a Empty right) = right
deleteRoot (Node a left Empty) = left
deleteRoot (Node a left right) = (Node (leftestElement right) left right)

leftestElement :: (Ord a) => Tree a -> a
leftestElement (Node a Empty _) = a
leftestElement (Node _ left _) = leftestElement left

rightestElement :: (Ord a) => Tree a -> a
rightestElement (Node a _ Empty) = a
rightestElement (Node _ _ right) = rightestElement right

