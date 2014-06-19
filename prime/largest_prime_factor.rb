# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
require 'pry'
def largest_prime_factor(number)
  i = 2
  is_divisible = true
  while is_divisible 
    if number % i == 0
      last_prime_factor = i
      divided_number = number/i
      is_divisible = false
    end
    i += 1
  end

  if divided_number != 1
    largest_prime_factor(divided_number)
  else
    last_prime_factor
  end
  
end

puts largest_prime_factor(600851475143)
