# Prime number(소수): A Prime Number can be divided evenly only by 1 or itself. 
# And it must be a whole number greater than 1.

require_relative 'prime'

RSpec.configure do |config|
  config.color_enabled = true
end

describe 'prime?' do
  it 'returns true for prime numbers' do
    expect(prime?(3)).to be true
    expect(prime?(11)).to be true
    expect(prime?(105557)).to be true
  end

  it 'returns false for non-prime numbers' do
    expect(prime?(4)).to be false
    expect(prime?(40)).to be false
    expect(prime?(101013)).to be false
  end
end

