# write a method
# IN => array
# DO => mutate & reverse elements of the array
# OUT => same array object with elements reversed
# may not used Array#reverse or Array#reverse! method


def reverse!(array)
  beginning_index = 1
  last_index = -1
  copied_array = array.dup

  copied_array.map! do |num|
    array[last_index] = num
    last_index -= beginning_index
  end

  array

end




list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
list #== [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
list == ["abc"]

list = []
reverse!([]) # => []
list == []