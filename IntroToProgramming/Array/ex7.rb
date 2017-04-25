# Write a program that iterates over an array and builds
# a new array that is the result of incrementing each value
# in the original array by a value of 2. You should have two
# arrays at the end of this program, The original array and
# the new array you've created. Print both arrays to the
# screen using the p method instead of puts.

def add_two(first_array)
  second_array = []
  first_array.each do |ele|
    second_array.push(ele + 2)
  end
  p first_array
  p second_array
end

arr = [32, 33, 34, 35, 36]

add_two(arr)