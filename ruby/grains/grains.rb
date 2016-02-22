class Grains

  def self.square(num)
    number = 1
    num.times do
      number = number * 2
    end
    number / 2
  end

  def self.total
    total = square(64)
    (total * 2) - 1
  end

end
