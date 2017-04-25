# Alan wrote the following method, which was intended to show all of the factors of the input number:
# Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the
# loop. How can you change the loop construct (instead of using begin/end/until) to make this work?
# Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle
# it gracefully instead of raising an exception or going into an infinite loop.

def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

# answer

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

puts factors(0)


# Bonus 1: What is the purpose of the number % dividend == 0 ?
# answer => purpose is to see if the result of the division is an integer number and has no remainder


# Bonus 2: What is the purpose of the second-to-last line in the method (the divisors before the method's end)?
# answer => it returns the value of divisors, although 'return' is not stated, it is implicit



