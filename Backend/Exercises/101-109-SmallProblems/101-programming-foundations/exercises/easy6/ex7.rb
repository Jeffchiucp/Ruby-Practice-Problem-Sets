# write a method
# IN -> Array
# OUT -> Two arrays that contain the first half and the second half of the original array
        # if array contains odd number of elements, the middle element should be placed in the first half of the array

def halvsies(array)
  count = array.size
  nested_array = []

  first_array = array.slice(0...count / 2)
  second_array = array.slice(first_array.size..-1)

  if array.size.odd?
    item = second_array.shift
    first_array.push(item)
  end

  nested_array << first_array
  nested_array << second_array

end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]