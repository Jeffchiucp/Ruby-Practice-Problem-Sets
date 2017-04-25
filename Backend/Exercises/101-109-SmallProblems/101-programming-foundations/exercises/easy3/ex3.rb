# Write a program that will ask a user for an input of a word or multiple words and give back the
# number of characters. Spaces should not be counted as a character.

puts ">> Please write a word or multiple words: "
input = gets.chomp
input_length = input.delete(" ").size

puts "There are #{input_length} characters in #{input}"


