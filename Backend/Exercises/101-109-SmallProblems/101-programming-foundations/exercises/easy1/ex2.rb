# method checks to see if number is odd and returns boolean value

def is_odd?(n)
  n % 2 == 1
end

puts is_odd?(3) # true
puts is_odd?(8) # false
puts is_odd?(-5) # true
