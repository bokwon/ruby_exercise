def prime_10001
  prime_numbers = []

  num = 2
  while prime_numbers.length <= 10000
    if (2..num/2).none? {|i| num % i == 0} # if it returns true, num is prime number
      prime_numbers << num
    end
    num += 1
  end

  prime_numbers.last
end

puts prime_10001
