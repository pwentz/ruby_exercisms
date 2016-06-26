require 'pry'
class Hamming 
  class << self

    def compute(first_genome, conflicting_genome)
      if first_genome.length + conflicting_genome.length == 2
        single_genome_computation(first_genome, conflicting_genome)
      else
        genome_comparison(first_genome, conflicting_genome) if length_check?(first_genome, conflicting_genome)
      end
    end

    def genome_comparison(first_genome, conflicting_genome)
      genome_breakdown = conflicting_genome.chars
      first_genome.chars.reduce(0) do |sum, strand|
        sum += 1 unless strand == genome_breakdown.shift
        sum
      end
    end

    def single_genome_computation(first_genome, conflicting_genome)
      if first_genome == conflicting_genome
        0
      else
        1
      end
    end

    def length_check?(first_genome, conflicting_genome)
      unless first_genome.length == conflicting_genome.length
        raise ArgumentError
      else
        true
      end
    end



  end
end
