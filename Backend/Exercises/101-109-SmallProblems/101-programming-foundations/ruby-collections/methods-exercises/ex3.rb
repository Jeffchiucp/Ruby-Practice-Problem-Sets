# What is the return value of reject? Why?

[1, 2, 3].reject do |num|
  puts num
end

# answer
# => 1
# => 2
# => 3
# => [1, 2, 3]
# the reject method evaluates the values in the block that are false. Because "puts" was used, the return
# value of the block is nil, thus each element in the collection was selected.
