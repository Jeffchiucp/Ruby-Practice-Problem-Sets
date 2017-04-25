# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.
# extra credit: ask for name and use that name, default to Teddy if no name is entered

puts "What is your name?"
name = gets.chomp

if name.empty?
  puts "Teddy is #{rand(20..200)} years old!"
else
  puts "#{name} is #{rand(20..200)} years old!"
end


