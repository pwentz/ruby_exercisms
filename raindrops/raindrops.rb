class Raindrops
  class << self
  attr_accessor :raindrops

    def convert(number)
      @raindrops = ""
      pling_check(number)
      plang_check(number)
      plong_check(number)
      make_sound(number)
    end

    ## BETTER, SHORTER VERSION
    #def convert(number)
      #unless raindrops(number).empty?
        #raindrops(number)
      #else
        #number.to_s
      #end
    #end
#
    #def raindrops(number)
      #a = {3 => "Pling", 5 => "Plang", 7 => "Plong"}
      #a.reduce("") do |num, pair|
        #num << pair.last if (number % pair.first).zero?
        #num
      #end
    #end

    def make_sound(number)
      unless raindrops.empty?
        raindrops
      else
        number.to_s
      end
    end

    def pling_check(number)
      concat_pling(number) unless number.divmod(3).first == 0
    end

    def concat_pling(number)
      raindrops << "Pling" if number.divmod(3).last == 0
    end

    def plang_check(number)
      concat_plang(number) unless number.divmod(5).first == 0
    end

    def concat_plang(number)
      raindrops << "Plang" if number.divmod(5).last == 0
    end

    def plong_check(number)
      concat_plong(number) unless number.divmod(7).first == 0
    end

    def concat_plong(number)
      raindrops << "Plong" if number.divmod(7).last == 0
    end


  end
end
