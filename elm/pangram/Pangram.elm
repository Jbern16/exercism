module Pangram where

import String exposing (toLower, toList)
import Set exposing (fromList, diff, Set)

alphabet =
    Set.fromList (toList "abcdefghijklmnopqrstuvwxyz")

convertToSet : String -> Set Char
convertToSet phrase =
    phrase
      |> String.toLower
      |> String.toList
      |> Set.fromList

isPangram : String -> Bool
isPangram phrase =
    let
      phraseLetters  = convertToSet phrase
    in
      diff alphabet phraseLetters == Set.fromList []
