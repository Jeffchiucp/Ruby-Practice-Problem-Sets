# In the previous exercise, you wrote a program to solicit a password.
# In this exercise, you should modify the program so it also requires a user name.
# The program should solicit both the user name and the password, then validate both, and
# issue a generic error message if one or both are incorrect; the error message should not
# tell the user which item is incorrect.

USERNAME = "DW382"
PASSWORD = "Kittens121"

loop do
  puts "Please enter your username: "
  username_input = gets.chomp
  puts "Please enter your password: "
  password_input = gets.chomp
  if username_input != USERNAME || password_input != PASSWORD
    puts "Authorization Failed! Try again!"
  else
    break
  end
end

puts "Welcome!"