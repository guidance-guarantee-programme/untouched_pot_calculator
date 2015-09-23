require 'untouched_pot'

RSpec.describe UntouchedPot, '#pot' do
  let(:initial_pot) { 50_000 }
  let(:annual_saving) { 2_000 }
  let(:duration) { 5 }
  let(:interest_rate) { 3 }

  subject(:pot) do
    UntouchedPot.new(initial_pot, annual_saving, duration, interest_rate).pot
  end

  it 'calculates the pot size at the end of the given time period' do
    expect(pot).to eq(68_900.52)
  end
end
