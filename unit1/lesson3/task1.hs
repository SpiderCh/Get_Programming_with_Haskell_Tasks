-- Practice writing lambda functions by rewriting each function in lesson 3 as a lambda expression.

sumSquareOrSquareSumOrig x y = if sumSquare > squareSum
                               then sumSquare
                               else squareSum
    where sumSquare = x^2 + y^2
          squareSum = (x+y)^2

sumSquareOrSquareSum x y = (\x y -> if x > y
                                    then x
                                    else y) (x^2 + y^2) ((x+y)^2)

overwriteOrigin x = let x = 2
                    in
                     let x = 3
                     in
                      let x = 4
                      in
                       x

overwrite x = (\x -> (\x -> (\x -> x) 4) 3) 2