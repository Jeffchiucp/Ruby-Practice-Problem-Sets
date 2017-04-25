# Using a while loop, print 5 random numbers between 0 and 99.

numbers = []

while numbers.size < 5
  numbers << rand(0...99)
end

puts numbers
