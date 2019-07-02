-- Quick check 12.1 Rewrite patientInfo to use your patientName type,
-- reducing the total arguments needed to three instead of four.

-- patientInfo :: String -> String -> Int -> Int -> String
-- patientInfo fname lname age height = name ++ " " ++ ageHeight
--   where name = lname ++ ", " ++ fname
--         ageHeight = "(" ++ show age ++ "yrs. " ++ show height ++ "in.)"

type PatientName = (String, String)

patientInfo :: PatientName -> Int -> Int -> String
patientInfo patient age height = name ++ " " ++ ageHeight
    where name = fst patient ++ " " ++ snd patient
          ageHeight = "(" ++ show age ++ "yrs., " ++ show height ++ "in.)"