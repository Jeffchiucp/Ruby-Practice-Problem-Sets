# write a method that takes an array of integers between 0 and 19, and returns an array of those integers
# sorted base on the english words for each number.

NUMBERS = %w(zero one two three four five six seven eight nine ten elevel twelve thirteen fourteen
            fifteen sixteen seventeen eighteen nineteen)


def alphabetic_number_sort(number)
  number.sort_by { |num| NUMBERS[num] }

end

p alphabetic_number_sort((0..19).to_a) #== [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]