-- Q11.1 What is the type signature for filter? How is it different from map?

filter :: (a -> Bool) [a] -> [a]

-- filter doesn't transform initial values