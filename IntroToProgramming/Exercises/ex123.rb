# ex1:
# Use the each method of Array to iterate over
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one-line version
# arr.each { |n| puts n }

# multi-line version
arr.each do |n|
  puts n
end


# ex2:
# Same as above, but only print out values greater than 5.
arr.each do |n|
  if n > 5
    puts n
  end
end
# one-line version
# arr.each { |n| puts n if n > 5 }


# ex3
# Now, using the same array from ex2, use the select method
# to extract all odd numbers into a new array.
def arr_odd(array)
  # one-line version
  new_array = array.select { |n| n if n % 2 != 0 }

  # multi-line version
  # new_array = array.select do |n|
  #   n % 2 != 0
  # end
end

# get new array from ex2
arr_from_5 = []
arr.each { |n| arr_from_5.push(n) if n > 5 } # [6, 7, 8, 9, 10]

# extract odd number from array above
p arr_odd(arr_from_5)   # [7, 9]

