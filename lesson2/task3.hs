-- Write a function that takes a value n. If n is even, the function returns n - 2,
-- and if the number is odd, the function returns 3 × n + 1.
-- To check whether the number is even, you can use either Haskell’s even function or mod (Haskell’s modulo function).

decreseByTwo n = n - 2

multiplyByThreeAndMakeEven n = 3 * n + 1

f1 n = if even n
       then decreseByTwo n
       else multiplyByThreeAndMakeEven n

f2 n = if remainder == 0
       then decreseByTwo n
       else multiplyByThreeAndMakeEven n
    where remainder = mod n 2