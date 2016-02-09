require 'prime'

VERSION = 1

class Raindrops

  def self.convert(number)
    prime_array = number.prime_division
    if prime_array.flatten.any?{|num| num == 3 || num == 5 || num == 7}
      raindrop_nums = prime_array.flatten.delete_if { |num| num > 7 || num <= 2 }
      raindrop_nums.uniq.join.gsub(/[735]/, '3' => 'Pling', '5' => 'Plang', '7' => 'Plong')
    else
      number.to_s
    end
  end
end

n




















    # If the number contains 3 as a prime factor, output 'Pling'.
    # - If the number contains 5 as a prime factor, output 'Plang'.
    # - If the number contains 7 as a prime factor, output 'Plong'.
    # - If the number does not contain 3, 5, or 7 as a prime factor,
    #   just pass the number's digits straight through.
