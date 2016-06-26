class Gigasecond
  class << self

    def from(start_date)
      start_date + gigasecond
    end

    def gigasecond
      (10**9)
    end
  end
end
