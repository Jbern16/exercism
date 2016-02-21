class Year

  VERSION = 1

  def self.leap?(year)
    if (year % 4 == 0) && (year % 100 != 0)
      "Yes, #{year} is a leap year"
    elsif (year % 400 == 0)
      "Yes, #{year} is a leap year"
    else
      "No, #{year} is not a leap year"
       false
    end
  end

end
