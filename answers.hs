-- Problem 1
-- Find the last element of a list.
myLast :: [a] -> a
myLast = head . reverse

-- Problem 2
-- Find the last but one element of a list.
-- myButLast [1,2,3,4]
-- 3
-- myButLast ['a'..'z']
-- 'y'
myButLast :: [a] -> a
myButLast []     = error "Can't accept an empty collection"
myButLast [x]    = error "Collection must contain more than one element"
myButLast [x,y]  = x
myButLast (_:xs) = myButLast xs

-- Problem 3
-- Find the K'th element of a list. The first element in the list is number 1.
-- elementAt [1,2,3] 2
-- 2
-- elementAt "haskell" 5
-- 'e'

elementAt :: (Eq a, Num a) => [a1] -> a -> a1
elementAt c 0      = error "Indexing is not 0 based"
elementAt (x:_) 1  = x
elementAt (_:xs) i = elementAt xs (i - 1)

-- Problem 4
-- Find the number of elements in a list
-- myLength [123, 456, 789]
-- 3
-- myLength "Hello, world!"
-- 13
myLength :: Num a => [t] -> a
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

-- Problem 5
-- Reverse A list
-- myReverse "A man, a plan, a canal, panama!"
-- "!amanap ,lanac a ,nalp a ,nam A"
-- myReverse [1,2,3,4]
-- [4,3,2,1]
myReverse :: [a] -> [a]
myReverse [] = []
myReverse xs = foldl (\acc n -> n : acc) [] xs
