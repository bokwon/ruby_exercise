def prime?(number)
  return false if number == 1
  #none? method returns true if the block never returns true for all elements.
  (2..number/2).none? {|i| number % i == 0}
end