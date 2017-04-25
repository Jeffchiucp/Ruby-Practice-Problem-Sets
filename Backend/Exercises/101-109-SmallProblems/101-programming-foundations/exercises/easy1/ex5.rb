# Write a method that takes one argument, a string, and returns the same string with
# the words in reverse order.

def reverse_sentence(words)
  words.split.reverse.join(' ')
end

puts reverse_sentence("hello world") # outputs "world hello"
puts reverse_sentence('Hello World') == "World Hello" # true
puts reverse_sentence("Reverse these words") == 'words these Reverse' #true