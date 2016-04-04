module Raindrops (..) where

import Arithmetic exposing (primeFactors)
import List exposing (member)
import String exposing (isEmpty)


getPrimeNums : Int -> List Int
getPrimeNums number =
      primeFactors number

pling : List Int -> String
pling primes =
      if member 3 primes then
        "Pling"
      else
        ""

plang : List Int -> String
plang primes =
      if member 5 primes then
        "Plang"
      else
        ""

plong : List Int -> String
plong primes =
      if member 7 primes then
        "Plong"
      else
        ""

raindrops : Int -> String
raindrops number =
      let
        primes = getPrimeNums number
        drops = pling primes ++ plang primes ++ plong primes
      in
        if isEmpty drops then
          toString number
        else
          drops
