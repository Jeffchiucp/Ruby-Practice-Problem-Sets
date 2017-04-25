#Write a method that returns true if the string passed as an argument is a palindrome,
# false otherwise. (A palindrome reads the same forwards and backwards.) Case matters, and all
# characters should be considered.

def palindrome?(string)
  string == string.reverse
end

puts palindrome?('madam') # => true
puts palindrome?("Madam") # => false
puts palindrome?("madam i'm adam") # => false
puts palindrome?('356653') # => true

# same but evaluates an array

def array_palindrome?(array)
  array == array.reverse
end

puts array_palindrome?(["baby", 4, 4, "baby"]) # => true
puts array_palindrome?([3, 4, 5, 6, 7]) # => false
