module Triangle (..) where

import Set exposing (size, member, fromList, Set)
import List exposing (any, maximum)
import Maybe exposing (withDefault)


checkInEquality : number -> number -> number -> Bool
checkInEquality a b c =
    let
      sums' = a + b + c
      max' =  maximum [a, b, c]
    in
      (2 * (Maybe.withDefault 0 max')) >= sums'

checkValid : Set number -> Bool
checkValid set =
    List.any (\a -> a < 0) (Set.toList set) || Set.member 0 set

checkLength : Set a -> Int -> Bool
checkLength set number =
    Set.size set == number

triangleKind : number -> number -> number -> Result String String
triangleKind a b c =
    let
      uniques = Set.fromList ([a, b, c])
    in
        if checkValid uniques then
          Err "Invalid lengths"
        else if checkInEquality a b c then
          Err "Violates inequality"
        else if checkLength uniques 1 then
          Ok "equilateral"
        else if checkLength uniques 2 then
          Ok "isosceles"
        else
          Ok "scalene"
