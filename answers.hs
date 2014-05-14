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
