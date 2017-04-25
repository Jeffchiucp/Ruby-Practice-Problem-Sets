# Write a method that takes one argument in the form of an integer or a float;
# this argument may be either positive or negative. This method should
# check if a number is odd, returning true if its absolute value is odd.
# You may assume that only integers are passed in as arguments.

def is_odd?(number)
  number % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false