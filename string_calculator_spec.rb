require_relative 'string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }
  
  it 'returns 0 for an empty string' do
    expect(calculator.add("")).to eq(0)
  end

  it 'returns sum of two comma-separated values' do
    expect(calculator.add("1,2")).to eq(3)
  end

  it 'returns sum of multiple numbers' do
    expect(calculator.add("1,2,5,7,9,123")).to eq(147)
  end
end