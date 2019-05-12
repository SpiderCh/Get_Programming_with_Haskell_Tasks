--  Quick check 4.1 Write a lambda function for cubing x and pass it to ifEven.

ifEven execute x = if even x
                   then execute x
                   else x

-- ifEven (\x -> x ^ 3) 6

--  Quick check 4.2 In compareLastNames, you didn’t handle the case of having two
-- last names that are the same but with different first names. Modify the
-- compareLastNamesfunction to compare first names and use it to fix compareLastNames.
-- names = [("Boris", "Strugatsky"), ("Arkady", "Strugatsky"), ("Ian", "Curtis"), ("Bernard", "Summer")]

compareLastNames name1 name2 = if lastName1 > lastName2
                               then GT
                               else if lastName1 < lastName2
                                    then LT
                                    else EQ
    where lastName1 = snd name1
          lastName2 = snd name2

compareFirstNames name1 name2 = if firstName1 > firstName2
                                then GT
                                else if firstName1 < firstName2
                                     then LT
                                     else EQ
    where firstName1 = fst name1
          firstName2 = fst name2

compareLastNamesWithFirstNames name1 name2 = if lastNamesStatus /= EQ
                                             then lastNamesStatus
                                             else compareFirstNames name1 name2
    where lastNamesStatus = compareLastNames name1 name2