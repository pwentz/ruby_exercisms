class Pangram
  class << self

    def is_pangram?(string)
      ("a".."z").all?{|letter|string.downcase.include?(letter)}
    end

  end
end
