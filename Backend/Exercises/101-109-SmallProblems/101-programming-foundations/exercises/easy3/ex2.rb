# Write a program that prompts the user for two positive integers, and then prints the results of the
# following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power.
# Do not worry about validating the input.

def prompt(msg)
  puts "=> #{msg}"
end

def valid_num?(num)
  num.to_i > 0 && num.to_i.to_s == num
end

def addition(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def product(num1, num2)
  num1 * num2
end

def quotient(num1, num2)
  num1 / num2
end

def remainder(num1, num2)
  num1 % num2
end

def power(num1, num2)
  num1 ** num2
end

first_num = ''
loop do
  prompt "Enter the first number: "
  first_num = gets.chomp
  break if valid_num?(first_num)
  prompt "Please enter a valid number"
end

second_num = ''
loop do
  prompt "Enter the second number: "
  second_num = gets.chomp
  break if valid_num?(second_num)
  prompt "Please enter a valid number"
end

first_num = first_num.to_i
second_num = second_num.to_i

prompt "Performing calculations..."
sleep 1.5

prompt "#{first_num} + #{second_num} = #{addition(first_num, second_num)}"
prompt "#{first_num} - #{second_num} = #{subtract(first_num, second_num)}"
prompt "#{first_num} * #{second_num} = #{product(first_num, second_num)}"
prompt "#{first_num} / #{second_num} = #{quotient(first_num, second_num)}"
prompt "#{first_num} % #{second_num} = #{remainder(first_num, second_num)}"
prompt "#{first_num} ** #{second_num} = #{power(first_num, second_num)}"

# shorter way

def prompt(msg)
  puts "=> #{msg}"
end

def valid_num?(num)
  num.to_i > 0 && num.to_i.to_s == num
end

first_num = ''
loop do
  prompt "Enter the first number: "
  first_num = gets.chomp
  break if valid_num?(first_num)
  prompt "Please enter a valid number"
end

second_num = ''
loop do
  prompt "Enter the second number: "
  second_num = gets.chomp
  break if valid_num?(second_num)
  prompt "Please enter a valid number"
end

prompt "Performing calculations..."
sleep 1.5

%w(+ - * / % **).each do |operator|
  equation = "#{first_num} #{operator} #{second_num}"
  prompt "#{equation} = #{eval(equation)}"
end
