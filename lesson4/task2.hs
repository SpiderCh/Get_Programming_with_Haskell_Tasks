-- Q4.2 Define a new location function for Washington, DC and add it to getLocation
-- Function. In the DC function, everyone’s names must be followed by Esq.

nyOffice user = name ++ " " ++ surname ++ ": PO Box 789 - New York, NY, 10013"
    where name = fst user
          surname = snd user

sfOffice user = name ++ " " ++ surname ++ "- PO Box 1010 - San Francisco, CA, 94109"
    where name = fst user
          surname = snd user

renoOffice user = surname ++ "- PO Box 456 - Reno, NV 89523"
    where surname = snd user

wdcOffice user = name ++ " " ++ surname ++ " Esq."
    where name = fst user
          surname = snd user

getLocation location = case location of
    "ny" -> nyOffice
    "sf" -> sfOffice
    "reno" -> renoOffice
    "wdc" -> wdcOffice
    _ -> (\name -> (fst name) ++ " " ++ (snd name))

addressLetter name location = locationFunction name
    where locationFunction = getLocation location