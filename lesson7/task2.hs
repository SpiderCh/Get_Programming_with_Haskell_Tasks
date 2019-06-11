-- Q7.2 Rewrite myGCD by using pattern matching.

myGCDoriginal a b = if remainder == 0
                    then b
                    else myGCDoriginal b remainder
    where remainder = a `mod` b

myGCD a 0 = a
myGCD a b = myGCD b remainder
    where remainder = a `mod` b
