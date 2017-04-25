# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# answer

counts = Hash.new(0)

statement.split("").each do |letter|
  counts[letter] += 1
end

puts counts