class Hamming

 def self.compute(strand1, strand2)
   verify_strands(strand1, strand2)

   unless strand1.eql? strand2
     nucleotides_2 = strand2.chars.to_a
     nucleotides_1 = strand1.chars.to_a
     pairs = nucleotides_1.zip(nucleotides_2)
     mutations = pairs.delete_if {|tide_1, tide_2| tide_1 == tide_2 }
     mutations.size
   else
     0
   end
 end

 def self.verify_strands(strand1, strand2)
   unless strand1.length == strand2.length
     raise ArgumentError.new("Strands arent the same length")
   end
 end

 VERSION = 1

end
