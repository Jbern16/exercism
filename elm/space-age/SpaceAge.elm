module SpaceAge (..) where

type Planet
  = Mercury
  | Venus
  | Earth
  | Mars
  | Jupiter
  | Saturn
  | Uranus
  | Neptune

conversion : Float -> Float -> Float
conversion seconds factor =
    (seconds / factor) / 31557600


ageOn : Planet -> Float -> Float
ageOn planet seconds =
    case planet of
      Earth ->
        seconds / 31557600
      Mercury ->
        conversion seconds 0.2408467
      Venus ->
        conversion seconds 0.61519726
      Mars ->
        conversion seconds 1.8808158
      Jupiter ->
        conversion seconds 11.862615
      Saturn ->
        conversion seconds 29.447498
      Uranus ->
        conversion seconds 84.016846
      Neptune ->
        conversion seconds 164.79132
