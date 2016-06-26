class Complement
  class << self

    def of_dna(genome)
      genome_length(genome) || ''
    end

    def strand_matchup
      {"G" => "C", "C" => "G", "T" => "A", "A" => "U"}
    end

    def genome_length(genome)
      if genome.length < 2
        strand_matchup[genome]
      else
        validity_check(genome)
      end
    end

    def validity_check(genome)
      if genome.chars.any?{|strand|strand_matchup[strand] == nil}
        ''
      else
        genome_reassignment(genome)
      end
    end

    def genome_reassignment(genome)
      genome.chars.reduce("") do |new_strand, genome_strand|
        new_strand << strand_matchup[genome_strand]
      end
    end
  end
end
