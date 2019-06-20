-- Q5.1 Now that you know about partial application, you no
-- longer need to use genIfEvenX. Redefine ifEvenInc, ifEvenDouble,
-- and ifEvenSquare by using ifEven and partial application.

ifEven function x = if even x
                    then function x
                    else x

ifEvenInc = ifEven (\x -> x + 1)
ifEvenDouble = ifEven (\x -> x + 2)
ifEvenSquare = ifEven (\x -> x ^ 2)
