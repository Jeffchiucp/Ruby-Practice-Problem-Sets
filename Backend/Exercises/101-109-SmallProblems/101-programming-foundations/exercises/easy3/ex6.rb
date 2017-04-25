# The || operator returns true if either or both of its operands are true, false if both operands
# are false. The && operator returns true if both of its operands are true, and false if either operand
# is false. This works great until you need only one of two conditions to be true, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments, and returns true if exactly one of its arguments is true, false otherwise.

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

puts xor?(5.even?, 4.even?) # => true
puts xor?(5.odd?, 4.odd?) # => true
puts xor?(5.odd?, 4.even?) # => false
puts xor?(5.even?, 4.odd?) # => false
