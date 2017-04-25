# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(num)
  num.to_s.chars.map(&:to_i).reduce(:+)
  end

puts sum(23) # 5