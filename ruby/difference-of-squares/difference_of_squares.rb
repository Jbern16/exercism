class Squares

  VERSION = 2

  def initialize(num)
     @numbers = (0..num).to_a
  end

  def square_of_sum
     @numbers.reduce(:+) ** 2
  end


  def sum_of_squares
     @numbers.map do |num|
       num ** 2
     end.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

end
