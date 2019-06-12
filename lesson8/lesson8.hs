--  Consider this
-- In the preceding lesson, you were asked
-- to consider writing a take function on your own. This
-- time, consider the drop function:
--    drop 3 [1,2,3,4]
--    [4]
-- Write your own version of drop and consider how this
-- function is both similar to and different from take.

myTake _ [] = []
myTake 0 _ = []
myTake n (x:xs) = x:next_elem
    where nextN = n - 1
          next_elem = myTake nextN xs

myDrop _ [] = []
myDrop 0 xs = xs
myDrop n (_:xs) = myDrop nextN xs
    where nextN = n - 1

-- Quick check 8.1 Use pattern matching to rewrite myLength
-- without needing to explicitly call tail.

myLength [] = 0
myLength (x:xs) = 1 + myLength xs
