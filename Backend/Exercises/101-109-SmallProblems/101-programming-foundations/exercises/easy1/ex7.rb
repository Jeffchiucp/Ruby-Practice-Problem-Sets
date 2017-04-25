# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s
# and 0s, always starting with 1. The length of the string should match the given integer.

def stringy(size)
  number = []

  size.times do |index|
    numbers = index.even? ? 1 : 0
    number << numbers
  end

  number.join
end

puts stringy(3) # 101