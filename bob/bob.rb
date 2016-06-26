# require 'pry'

class Bob

  # def initialize
  #   @remark
  # end

  def hey(remark)
    # binding.pry
    if remark == remark.upcase && remark != remark.downcase
      "Whoa, chill out!"
    elsif remark.reverse[0] == "?"
      "Sure."
    elsif remark.empty? || remark.strip.empty?
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end
