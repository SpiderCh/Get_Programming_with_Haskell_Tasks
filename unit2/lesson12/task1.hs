-- Q12.1 Write a function similar to canDonateTo that takes two
-- patients as arguments rather than two BloodTypes.

data ABOType   = A | B | AB | O
data RhType    = Positive | Negative
data BloodType = BloodType ABOType RhType

showRh :: RhType -> String
showRh Positive = "+"
showRh Negative = "-"

showABO :: ABOType -> String
showABO A = "A"
showABO B = "B"
showABO AB = "AB"
showABO O = "O"

showBloodType :: BloodType -> String
showBloodType (BloodType aboType rhType) = showABO aboType ++ showRh rhType

canDonateTo :: BloodType -> BloodType -> Bool
canDonateTo (BloodType O _) _ = True
canDonateTo _ (BloodType AB _) = True
canDonateTo (BloodType A _) (BloodType A _) = True
canDonateTo (BloodType B _) (BloodType B _) = True
canDonateTo _ _ = False

data Sex = Male | Female

type FirstName = String
type MiddleName = String
type LastName = String

data Name = Name FirstName LastName
          | NameWithMiddleName FirstName MiddleName LastName


data Patient = Patient {name :: Name
                      , sex :: Sex
                      , age :: Int
                      , height :: Int
                      , weight :: Int
                      , bloodType :: BloodType
                       }

canDonateTo :: Patient -> Patient -> Bool
canDonateTo firstPatient secondPatient = canDonateTo (bloodType firstPatient) (bloodType secondPatient)