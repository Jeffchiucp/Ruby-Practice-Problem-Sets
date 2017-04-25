# Write a program that displays a welcome message, but only after the user enters
# the correct password, where the password is a string that is defined as a constant in your program.
# Keep asking for the password until the user enters the correct password.

PASSWORD = "Kara"

input = ''
loop do
  puts "Please enter your password:"
  input = gets.chomp
  if input == PASSWORD
    break
  else
    puts "Invalid Password!"
  end
end

puts "Welcome!"
