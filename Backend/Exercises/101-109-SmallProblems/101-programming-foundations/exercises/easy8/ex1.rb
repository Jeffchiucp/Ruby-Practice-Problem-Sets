# write a method
# IN -> an array of numbers
# DO -> calculate the sum of the sum of each leading subsequence for the array
# OUT -> return the sum

def sum_of_sums(array)
 sum = 0

  1.upto(array.size) do |num|
    sum += array.slice(0, num).inject(:+)
  end

  sum
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35