# write a method
# IN -> an array
# DO -> rotate an array by moving the first element to the end of the array
# OUT -> return a new array
# cannot use Array#rotate or Array#rotate! method and original array should not be modified

def rotate_array(array)
  rotated = array.dup
  rotated << rotated.shift
end

rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) #== ['b', 'c', 'a']
rotate_array(['a']) #== ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true