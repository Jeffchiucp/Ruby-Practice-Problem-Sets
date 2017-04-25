# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then
# computes the sum of those multiples. For instance, if the supplied number is 20,
# the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
#You may assume that the number passed in is an integer greater than 1.

def multisum(num)
  numbers = []
  1.upto(num).select do |integer|
    if integer % 3 == 0 || integer % 5 == 0
      numbers << integer
    end
  end
  numbers
  numbers.inject(:+)
end

# Discussion

# Our solution begins with a multiple? method that returns true if 
# the given number is an exact multiple of divisor, false if it is not.
# This method isn't entirely necessary, but it makes the main method a 
# bit more readable.

# The main method, multisum, does nothing fancy; it just rushes headlong
#  into the problem, and comes out the other end with the correct result. It just adds each value in the range to our sum variable if the value is a multiple of 3 or 5.

# Further Exploration

# Investigate Enumerable.inject (also known as Enumerable.reduce), 
# How might this method be useful in solving this problem? 
# (Note that Enumerable methods are available when working with Arrays.) 
# Try writing such a solution. Which is clearer? Which is more succint?

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168