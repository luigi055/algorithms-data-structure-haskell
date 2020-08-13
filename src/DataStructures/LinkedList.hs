module DataStructures.LinkedList where

data LinkedList a = Node a (LinkedList a) 
                | Empty deriving (Show, Eq)

instance Functor LinkedList where
 fmap f (Node x Empty) = Node (f x) Empty
 fmap f l = Node (f (getHead l)) (fmap f (getTail l))

infixr 5 ->>
(->>) :: a -> LinkedList a -> LinkedList a
x ->> xs = Node x xs

infixr 5 .++
(.++) :: LinkedList a -> LinkedList a -> LinkedList a
(Node a Empty) .++ bs = Node a bs
as .++ bs = (getHead as) ->> ((getTail as) .++ bs)

toList :: LinkedList a -> [a]
toList Empty = []
toList (Node a l) = a:(toList l)

fromList :: [a] -> LinkedList a 
fromList [] = Empty
fromList l = Node (head l) (fromList (tail l))

insert :: a -> LinkedList a -> LinkedList a
insert = (->>)

concat' :: LinkedList a -> LinkedList a -> LinkedList a
concat' = (.++)

push :: a -> LinkedList a -> LinkedList a
push x Empty = Node x Empty
push x (Node a Empty) = Node a (Node x Empty)
push x xs = (getHead xs) ->> (push x (getTail xs))

setByIndex :: Int -> a -> LinkedList a -> LinkedList a
setByIndex 0 v lls = v ->> lls
setByIndex i v lls = take' i lls .++ (v ->> drop' i lls)

unShift :: LinkedList a -> LinkedList a
unShift = getTail

pop :: LinkedList a -> LinkedList a
pop Empty = Empty
pop (Node _ Empty) = Empty
pop (Node a l) = a ->> (pop l)

removeByIndex :: Int -> LinkedList a -> LinkedList a
removeByIndex 0 lls = unShift lls
removeByIndex i lls
 | i > (length' lls)-1 = lls
 | otherwise = (take' (i) lls) .++ (drop' (i+1) lls)

take' :: Int -> LinkedList a -> LinkedList a
take' 0 _ = Empty
take' _ Empty = Empty
take' i (Node l ls)
 | i > 0 = l ->> take' (i-1) ls
 | otherwise = Empty

drop' :: Int -> LinkedList a -> LinkedList a
drop' i lls@(Node l ls)
 | i > (length' lls)-1 = Empty
 | i /= 0 = drop' (i-1) (ls)
 | otherwise = lls

findByIndex :: Int -> LinkedList a -> a
findByIndex 0 xs = getHead xs
findByIndex x xs = getHead (findTail x xs)
    where
      findTail 0 xs = xs
      findTail i xs = findTail (i-1) (getTail xs)

getHead :: LinkedList a -> a
getHead (Node a _) = a
getHead Empty = error "Empty Linked List"

getTail :: LinkedList a -> LinkedList a
getTail Empty = Empty
getTail (Node _ b) = b

length' :: LinkedList a -> Int
length' Empty = 0
length' xs = 1 + (length' (getTail xs))

getLast :: LinkedList a -> a
getLast Empty = error "empty Linked List"
getLast (Node a Empty) = a
getLast l = getLast (getTail l)


