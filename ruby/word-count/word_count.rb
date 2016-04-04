require 'pry'

class Phrase

  VERSION = 1

def initialize(phrase)
  @phrase = phrase
end

def word_count
  format_words.reduce(Hash.new(0)) do |counter, word|
    counter[word] +=1
    counter
  end
end

def format_words
  @phrase.downcase.split(/[^(\w|')]+/)
end


end
