require 'pry'

class Robot

  attr_reader :name

  LETTERS = ("A".."Z").to_a
  NUMBERS = (0..9).to_a

  def initialize
    @name = find_name
  end

  def find_name
    name = []
      2.times do |chr|
        name << LETTERS.sample
      end
      3.times do |num|
        name << NUMBERS.sample
      end
      name.join
  end

  def reset
    @name = find_name
  end


end
