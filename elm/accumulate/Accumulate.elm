module Accumulate (..) where

accumulate function collection =
    case collection of
      [] ->
            []
      [first] ->
            [function first]
      (first::rest) ->
            function first :: accumulate function rest
