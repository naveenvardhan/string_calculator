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

  it 'handles new lines between numbers' do
    expect(calculator.add("1\n2,3")).to eq(6)
  end

  it 'supports different delimiters' do
    expect(calculator.add("//;\n1;2")).to eq(3)
  end

  it 'throws exception on negative numbers' do
    expect { calculator.add("1,-2,3,-5") }.to raise_error("negative numbers not allowed: -2, -5")
  end
end