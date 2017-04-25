# write a method
# IN -> array of integers
# DO -> multiply all of the numbers together divided by number of elements in array
# OUT -> print the result rounded to 3 decimal places

def show_multiplicative_average(array)
  size = array.size
  average = array.map(&:to_f).inject(:*) / size
  result = format('%0.3f', average)

  puts "The result is #{result}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])