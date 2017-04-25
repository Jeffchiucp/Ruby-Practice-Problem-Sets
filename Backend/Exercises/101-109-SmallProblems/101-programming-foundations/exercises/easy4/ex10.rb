# In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise,
# You're going to extend that method by adding the ability to represent negative numbers as well.
# Write a method that takes an integer, and converts it to a string representation. You may not use any
# standard conversion methods like to_s, String(), etc.


DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(number)
  return '0' if number == 0
  number > 0 ? "+#{integer_to_string(number.abs)}" : "-#{integer_to_string(number.abs)}"
end

p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)
