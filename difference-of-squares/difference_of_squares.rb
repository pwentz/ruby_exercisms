class DifferenceofSquares
end 

class Squares < DifferenceofSquares
  attr_reader :last_number
  def initialize(last_number)
    @last_number = last_number
  end

  def square_of_sum
    (0..last_number).reduce do |sum, number|
      sum + number
    end ** 2
  end

  def sum_of_squares
    (0..last_number).reduce do |sum, number|
      sum + number**2
    end
  end

  def difference
    (square_of_sum - sum_of_squares).abs
  end
end
