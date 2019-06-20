-- Q9.2 Your isPalindrome function from lesson 6 doesn’t
-- handle sentences with spaces or capitals. Use map and
-- filter to make sure the phrase “A man a plan a canal Panama”
-- is recognized as a palindrome.

import Data.Char

isPalindrome word = word == reverse word

newPalindrome [] = True
newPalindrome xs = isPalindrome loweredXS
    where newXS = filter (\x -> x /= ' ') xs
          loweredXS = map toLower newXS