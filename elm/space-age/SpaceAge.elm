module SpaceAge (..) where

import Html



--model





type Planet
  = Venus
  | Earth
  | Mars


conversion : Float -> Float -> Float
conversion seconds factor =
    (seconds / factor) / 31557600


ageOn : Planet -> Float -> Float
ageOn planet seconds =
    case planet of
      Earth ->
        seconds / 31557600
      Venus ->
        conversion seconds 0.61519726
      Mars ->
        conversion seconds 1.8808158
