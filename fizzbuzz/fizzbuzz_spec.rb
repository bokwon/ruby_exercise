# fizzbuzz: Build a program that can take a number and if the number is evenly divisible by 3,
# it should return "Fizz", if it's divisible by 5, it should return "Buzz", if it's divisible by both
# 3 and 5, it should return "FizzBuzz".

require_relative 'fizzbuzz'

RSpec.configure do |config|
  config.color_enabled = true 
end 

describe 'fizzbuzz' do
  it 'returns "Fizz" when the number is divisible by 3' do
    expect(fizzbuzz(3)).to eq('Fizz')
  end

  it 'returns "Buzz" when the number is divisible by 5' do
    expect(fizzbuzz(5)).to eq('Buzz')
  end

  it 'returns "FizzBuzz" when the number is divisible by both 3 and 5' do
    expect(fizzbuzz(15)).to eq('FizzBuzz')
  end
    
  it 'return nil when the number is not divisibly by 3 or 5' do
    expect(fizzbuzz(4)).to eq(nil)
  end
end