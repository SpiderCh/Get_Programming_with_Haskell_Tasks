-- Using a let expression and a lambda function aren’t exactly the same thing under
-- the hood. For example, the following code will cause an error if you try to run it.
--  Using a let expression and a lambda function aren’t exactly the same thing under
-- the hood. For example, the following code will cause an error if you try to run it:

counter x = let x = x + 1
            in
             let x = x + 1
             in
              x

counterWithLambdas x = (\x -> (\x -> x) (x + 1)) (x + 1)