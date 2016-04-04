module Leap (..) where

isLeapYear : Int -> Bool
isLeapYear year =
    (year % 4 == 0 && year % 100 /= 0) || (year % 400 == 0)
