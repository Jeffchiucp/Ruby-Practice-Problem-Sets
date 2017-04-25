# write a method
# IN -> Two arrays
# DO -> Combine both arrays, with elements taken in alteration
# OUT -> Return a new array containing all elements from both arrays

def interleave(first_array, second_array)
  first_array.zip(second_array).flatten
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']