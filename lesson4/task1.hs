-- Q4.1 Anything that can be compared in Haskell (for example, [Char],
-- which you use for the names in your name tuples) can be compared
-- with a function called compare. The compare function returns GT, LT, or EQ.
-- Rewrite compareLastNames by using compare.

compareLastNames name1 name2 = if lastName1 > lastName2
                               then GT
                               else if lastName1 < lastName2
                                    then LT
                                    else EQ
    where lastName1 = snd name1
          lastName2 = snd name2

compareLastNamesModified name1 name2 = compare lastName1 lastName2
    where lastName1 = snd name1
          lastName2 = snd name2