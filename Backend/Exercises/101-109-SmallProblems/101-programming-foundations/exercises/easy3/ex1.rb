# Write a program that solicits 6 numbers from the user, then prints a message that describes whether
# or not the 6th number appears amongst the first 5 numbers.

def prompt(msg)
  puts "=> #{msg}"
end

def valid_num?(num)
  num.to_i.to_s == num
end

def nums_to_integers(numbers)
  numbers.map(&:to_i)
end

numbers = []

num1 = ''
loop do
  prompt("Enter the 1st number:")
  numbers << num1 = gets.chomp
  break if valid_num?(num1)
  prompt "Please enter a valid number"
end

num2 = ''
loop do
  prompt "Enter the second number: "
  numbers << num2 = gets.chomp
  break if valid_num?(num2)
  prompt "Please enter a valid number"
end

num3 = ''
loop do
  prompt "Enter the third number:"
  numbers << num3 = gets.chomp
  break if valid_num?(num3)
  prompt "Please enter a valid number"
end

num4 = ''
loop do
  prompt "Enter the fourth number: "
  numbers << num4 = gets.chomp
  break if valid_num?(num4)
  prompt "Please enter a valid number"
end

num5 = ''
loop do
  prompt "Enter the fifth number:"
  numbers << num5 = gets.chomp
  break if valid_num?(num5)
  prompt "Please enter a valid number"
end

num6 = ''
loop do
  prompt "Enter the sixth number:"
  numbers << num6 = gets.chomp
  break if valid_num?(num6)
  prompt "Please enter a valid number"
end

numbers = nums_to_integers(numbers)

if numbers.include?(num6.to_i)
  prompt "The number #{num6} appears in #{numbers}"
else
  prompt "The number #{num6} does not appears in #{numbers}"
end