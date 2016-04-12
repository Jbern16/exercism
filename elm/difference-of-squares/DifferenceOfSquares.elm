module DifferenceOfSquares (..) where

import Array exposing (initialize, foldr)

squareOfSum : Int -> Int
squareOfSum num =
  let
    getNumbersSum = initialize (num + 1) identity
  in
    (foldr (+) 0 getNumbersSum)^2

sumOfSquares : Int -> Int
sumOfSquares num =
  let
    num = num + 1
    getNumbersSquare = initialize num (\e -> e^2 )
  in
    foldr (+) 0 getNumbersSquare

difference : Int -> Int
difference num =
  (squareOfSum num) - (sumOfSquares num)
