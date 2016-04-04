module Strain (..) where

keep : (a -> Bool) -> List a -> List a
keep func list =
  case list of
  [] ->
    []
  (first::rest) ->
    if func first then
      first :: keep func rest
    else
      keep func rest

discard : (a -> Bool) -> List a -> List a
discard func list =
  case list of
    [] ->
      []
    (first::rest) ->
      if func first then
        discard func rest
      else
        first :: discard func rest
