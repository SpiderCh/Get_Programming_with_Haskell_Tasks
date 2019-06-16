-- Q9.1 Use filter and length to re-create the elem function.

myElem _ [] = False
myElem element xs = length result > 0
    where result = filter (\x -> x == element) xs