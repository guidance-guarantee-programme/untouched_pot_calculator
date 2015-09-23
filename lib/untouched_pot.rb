class UntouchedPot
  attr_accessor :pot

  def initialize(initial_pot, annual_saving, duration, interest_rate)
    @pot = duration.times.to_a.reduce(initial_pot) do |result, year|
      result = ((result + annual_saving) * (1 + (interest_rate.to_f / 100)))
      result = (result * 100).round.to_f / 100
    end
  end
end
