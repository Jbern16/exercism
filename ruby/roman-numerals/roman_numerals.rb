class Fixnum

 VERSION = 1

  NUMBER_TO_ROMAN = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
    }

  def to_roman
    number = self
    roman_numeral = ""
    NUMBER_TO_ROMAN.each do |num, roman|
      while number >= num
        roman_numeral << roman
        number -= num
      end
  end
  roman_numeral
  end
end
