# Write a method named 'include?'
# IN -> an array and a search value
# DO -> see if the search value is present in the array
# OUT -> return true if the search value is present, otherwise return false
# cannot use #Array#include? in solution

def include?(array, value)
  counter = 0

  loop do
    current_item = array[counter]

    return false if counter == array.size || array.empty?
    return true if current_item == value

    counter += 1

  end
end


def include?(array, value)
  array.any? { |item| item == value }
end


include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false