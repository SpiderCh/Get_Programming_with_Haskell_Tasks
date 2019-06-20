-- Q6.3 Write a function inFirstHalf that returns True if an element
-- is in the first half of a list, and otherwise returns False.

ifNotEven execute x = if even x
                      then x
                      else execute x

ifNotEvenInc = ifNotEven (\x -> x + 1 )

halfListSizeFunc list = div listSize 2
    where listSize = ifNotEvenInc (length list)

inFirstHalf element list = elem element listFirstHalf
    where halfSize = halfListSizeFunc list
          listFirstHalf = take halfSize list
