
class Gigasecond

  VERSION = 1

  def self.from(time)
    birthday = time
    gigaday = birthday + (10**9)
    p gigaday
  end
end
