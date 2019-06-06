-- Quick check 5.1 Write a function genIfXEven that creates a closure with x and returns a new function that allows the
-- user to pass in a function to apply to x if x is even.

ifEven execute x = if even x
                   then execute x
                   else x

genIfXEven x = (\f -> ifEven f x)

-- Quick check 5.2 Write a version of genApiRequestBuilder that also takes the resource as an argument.


getRequestURL host apiKey resource id = host ++
                                         "/" ++
                                         resource ++
                                         "/" ++
                                         id ++
                                         "?token=" ++
                                         apiKey
                                         
genHostRequestBuilder host = (\apiKey resource id ->
                               getRequestURL host apiKey resource id)
                               
genApiRequestBuilderOrigin hostBuilder apiKey = (\resource id ->
                                                  hostBuilder apiKey resource id)

genApiRequestBuilder hostBuilder apiKey resource = (\id -> 
                                                     hostBuilder apiKey resource id)

-- Quick check 5.3 Make a builder function that’s specifically for http://example.com,
-- the 1337hAsk3ll API key, and the book resource. That’s a function that requires only
-- the ID of a spe- cific book and then generates the full URL.

genApiRequestBuilderSpecific = getRequestURL "http://example.com" "1337hAsk3ll" "book"

-- Quick check 5.4 Use flip and partial application to create a function 
-- called subtract2 that removes 2 from whatever number is passed in to it.

flipArgs func = (\x y -> func y x)

mySubtract = flipArgs (-)

subtract2 = mySubtract 2
