-- Quick check 9.1 Implement remove, which removes elements
-- that pass the test.

myRemove _ [] = []
myRemove testFunc (x:xs) = if testFunc x
                           then myRemove testFunc xs
                           else x:myRemove testFunc xs

-- Quick check 9.2 Write the function myProduct, which calculates
-- the product of a list of numbers.

myProduct l = foldl (*) 1 l