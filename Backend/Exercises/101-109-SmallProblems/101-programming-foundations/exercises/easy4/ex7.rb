# Convert a string to a number without using to_i or Integer(). Assume all characters are numeric 0-9.

DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
           '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end


# This solution is similar in some respects to 
# the string_to_integer method we developed, but is a bit trickier to get right.

# In string_to_integer, we used a Hash to perform conversions from strings to numbers. In this method, we could also use a Hash, but an Array works just as well, and maybe more clearly. If we have the digit 5, we can get the string equivalent by just looking up DIGITS[5].

# The core of the method simply walks through the number chopping off the last digit in each iteration by using number.divmod(10), which returns two values: the value of number divided by 10 using integer division, and the remainder of that division. The remainder in each case is the rightmost digit in the remaining number, so we just prepend it to the current result value. Once number is whittled down to 0, we're done.

# Further Exploration

# One thing to note here is the String#prepend method; unlike most string mutating methods, the name of this method does not end with a !. However, it is still a mutating method - it changes the string in place.

# This is actually pretty common with mutating methods that do not have a corresponding non-mutating form. chomp! ends with a ! because the non-mutating chomp is also defined. prepend does not end with a ! because there is no non-mutating form of prepend.

# How many mutating String methods can you find that do not end with a !. Can you find any that end with a !, but don't have a non-mutating form? Does the Array class have any methods that fit this pattern? How about the Hash class?

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570