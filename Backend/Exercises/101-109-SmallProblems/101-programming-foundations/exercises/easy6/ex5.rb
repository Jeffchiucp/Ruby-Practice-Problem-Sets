# write a method
# IN -> Array
# DO -> reverse elements in array
# OUT -> New array with elements from the original array in reversed order

def reverse(array)
  reversed_array = []
  counter = 0

  until array.size == counter
    current_item = array[counter]
    reversed_array.unshift(current_item)
    counter += 1
  end

  reversed_array
end


reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b c d e)) == %w(e d c b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
list.object_id != new_list.object_id  # => true
list == [1, 2, 3]                     # => true
new_list == [3, 2, 1]