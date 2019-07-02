-- Q12.2 Implement a patientSummary function that uses your final Patient type.
-- patientSummary should output a string that looks like this:
--  **************
--  Patient Name: Smith, John
--  Sex: Male
--  Age: 46
--  Height: 72 in.
--  Weight: 210 lbs.
--  Blood Type: AB+
--  **************
-- If you need to, feel free to create useful helper functions.

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

data Sex = Male | Female

showSex :: Sex -> String
showSex Male = "Male"
showSex Female = "Female"

type FirstName = String
type MiddleName = String
type LastName = String

data Name = Name FirstName LastName
          | NameWithMiddleName FirstName MiddleName LastName
          
showName :: Name -> String
showName (Name first last) = first ++ " " ++ last
showName (NameWithMiddleName first middle last) = first ++ " " ++ middle ++ " " ++ last


data Patient = Patient {name :: Name
                      , sex :: Sex
                      , age :: Int
                      , height :: Int
                      , weight :: Int
                      , bloodType :: BloodType
                       }

patientSummary :: Patient -> String
patientSummary patient = printStars ++ "\n"
                      ++ "Patient name: " ++ showName (name patient) ++ "\n"
                      ++ "Sex: " ++ showSex (sex patient) ++ "\n"
                      ++ "Age: " ++ show (age patient) ++ "\n"
                      ++ "Height: " ++ show (height patient) ++ "in.\n"
                      ++ "Weight: " ++ show (weight patient) ++ "lbs.\n"
                      ++ "Blood Type: " ++ showBloodType (bloodType patient) ++ "\n"
                      ++ printStars ++ "\n"
    where printStars = "**************"

jackieSmith :: Patient
jackieSmith = Patient {name = Name "Jackie" "Smith"
                       , age = 43
                       , sex = Female
                       , height = 62
                       , weight = 115
                       , bloodType = BloodType O Negative }