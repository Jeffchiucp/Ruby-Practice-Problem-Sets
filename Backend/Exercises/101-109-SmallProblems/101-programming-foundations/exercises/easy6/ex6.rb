# Write a method
# IN -> two arrays
# DO -> combine arrays into one array without any duplications
# OUT -> New array

def merge(first_array, second_array)
  first_array | second_array
end

merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]