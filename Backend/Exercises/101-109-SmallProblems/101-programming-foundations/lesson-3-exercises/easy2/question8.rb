# Q8 In the array: Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# answer

puts flintstones.bsearch_index {|letters| letters.include?('Be') }
