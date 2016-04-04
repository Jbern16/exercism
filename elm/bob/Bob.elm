module Bob where
import String exposing (..)
import Regex exposing (..)

cleanNumbers : String -> String
cleanNumbers phrase =
  phrase
    |> replace All (regex "[0123456789]") (\_ -> "")
    |> trim

checkUppers : String -> Bool
checkUppers phrase =
    if toUpper phrase == phrase then
      True
    else
      False

hey : String -> String
hey phrase  =
  let
    cleanedString = cleanNumbers phrase
  in

  if startsWith ","  (reverse cleanedString) then
     "Whatever."
  else if (endsWith "?" cleanedString) && (checkUppers cleanedString) == False then
    "Sure."
  else if String.isEmpty cleanedString then
    "Fine. Be that way!"
  else if (endsWith "?" cleanedString) && (startsWith "?" cleanedString) then
    "Sure."
  else if checkUppers cleanedString then
    "Whoa, chill out!"
  else
      "Whatever."
