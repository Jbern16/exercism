class Prime

  def self.nth(n)
    if n == 0
      raise ArgumentError
    end
    up_to = n * (Math.log(n) + 2)
    primes = (2..up_to).to_a
    primes.each {|num| primes.delete_if {|i| i > num && (i % num) == 0} }
    primes[n-1]
  end

end

# http://codereview.stackexchange.com/questions/90813/finding-the-nth-prime
