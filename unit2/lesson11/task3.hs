-- Q11.3 Recall myFoldl from lesson 9.
--   myFoldl f init [] = init
--   myFoldl f init (x:xs) = myFoldl f newInit xs
--     where newInit = f init x
-- What’s the type signature of this function? Note: foldl has a different type signature.

-- Our foldl may use simple function signature like this:
myFoldl :: (a -> a -> a) a -> [a] -> a

-- But in standard foldl there may be type conversion, so signature must look like:
fodl :: (b -> a -> b) -> b -> [a] -> b