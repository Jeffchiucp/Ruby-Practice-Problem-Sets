# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered
# logically according to the numeric value of the odd integers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# answer

arr.sort do |a, b|
    a[-1] <=> b[-1]
end

# or

arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end

