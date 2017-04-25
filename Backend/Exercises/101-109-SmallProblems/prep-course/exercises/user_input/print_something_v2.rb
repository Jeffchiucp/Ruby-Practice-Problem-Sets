# In the previous exercise, you wrote a program that asks the user if they want the program
# to print "something". However, this program recognized any input as valid: if you answered
# anything but y, it treated it as an n response, and quit without printing anything.

# Modify your program so it prints an error message for any inputs that aren't y or n,
# and then try again. In addition, your program should allow both Y and N (uppercase) responses;

puts "Do you want me to print something? (y/n)"

input = ''
loop do
  input = gets.chomp.downcase
  if input == 'y'
    puts "something"
    break
  elsif input == 'n'
    break
  else
    puts "Error! That's not a valid answer. Please enter y/n "
  end
end
