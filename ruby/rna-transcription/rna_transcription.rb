class Complement
  VERSION = 3

  def self.of_dna(rna_nucleotide)
   verify(rna_nucleotide)
   rna_nucleotide.gsub(/[GCTA]/, 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
  end

  def self.verify(rna_nucleotide)
    if /[^GCTA]/.match(rna_nucleotide)
       0
    raise ArgumentError.new("Invalid Nucleotide")
    end
  end
end
