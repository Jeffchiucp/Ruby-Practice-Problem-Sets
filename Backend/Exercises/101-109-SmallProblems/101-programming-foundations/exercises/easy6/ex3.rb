# write a method that calcuates and returns the INDEX of the first Fibonnaci number that has the number of digits specified
# as the argument

# fibonnaci sequence - first two numbers are 1, and each number following that is the sum of the two previous numbers.

# argument -> number
# return -> the index of the first number that has the number of digits as specified in the argument

def find_fibonacci_index_by_length(num)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first+second
    break if fibonacci.to_s.size >= num

    first = second
    second = fibonacci
  end

  index

end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847