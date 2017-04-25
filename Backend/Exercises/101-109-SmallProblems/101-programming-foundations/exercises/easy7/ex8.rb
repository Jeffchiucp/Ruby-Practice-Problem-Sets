# write a method
# IN -> two arrays, both contain list of integers
# DO -> calculate product of each pair of numbers with the same index (assume each array has same # of elements)
# OUT -> return new array that contains product of each pair

def multiply_list(first_array, second_array)
  counter = 0
  product_array = []

  until counter == first_array.size
    result = first_array[counter] * second_array[counter]
    product_array << result
    counter += 1
  end

  product_array
end

# or use zip method to solve problem
def multiply_list(first_array, second_array)
 first_array.zip(second_array).map { |a, b| a * b}
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]