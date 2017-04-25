# What is the return value of each_with_object? Why?

hash = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

puts hash

# answer => { "a" => "ant", "b" => "bear", "c" => "cat" }
# each_with_object iterates through the collection and assigns the index of 0 for each string as the key
# for each value in the hash