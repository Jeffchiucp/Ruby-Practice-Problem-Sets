# write a method
# IN -> two arrays
# DO -> calculate product of each pair of numbers that can be formed between the two arrays
# OUT -> return new array with products sorted by increasing value

def multiply_all_pairs(first_array, second_array)
  pairs = first_array.product(second_array)
  product_array = pairs.map do |subarray|
            subarray.map.inject(:*)
        end

  product_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]