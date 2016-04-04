module Anagram (..) where

import List exposing(foldr, filter, map, length, sort, member)
import String exposing(toLower, split)

sortWord : String -> String
sortWord word =
    let
      lowered = toLower word
    in
      foldr (++) "" (sort (split "" lowered))

detect : String -> List String -> List String
detect word list =
      let
        sortedWord = sortWord word
        filteredList = filter (\e -> toLower e /= word ) list
      in
        if member (toLower word) (List.map toLower list)
        && length list == 1 then
          []
        else
          filter (\e -> sortWord e == sortedWord) filteredList
