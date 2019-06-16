-- Q9.3 In mathematics, the harmonic series is the sum of
-- 1/1 + 1/2 + 1/3 + 1/4 .... Write a function harmonic
-- that takes an argument n and calculates the sum of 
-- the series to n. Make sure to use lazy evaluation.

hSeries 0 = 0
hSeries 1 = 1
hSeries n = foldl (+) 0 (map (\x -> 1 / x) [1 .. n])