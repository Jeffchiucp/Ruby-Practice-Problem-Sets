# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants
# to determine the sum or product of all numbers between 1 and the entered integer.
def sum(num)
  total = 0
  1.upto(num) {|x| total += x}
  total
end

def product(num)
  total = 1
  1.upto(num) { |x| total *= x}
  total
end

puts "Please enter a number greater than 0: "
input = gets.chomp.to_i

user_choice = ''
loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product"
  user_choice = gets.chomp.downcase
  if user_choice == 's' || user_choice == 'p'
    break
  else
    puts "Invalid. Please enter valid input"
  end
end

if user_choice == 's'
  puts "The sum of the integers between 1 and #{input} is #{sum(input)}"
elsif user_choice == 'p'
  puts "The product of the integers between 1 and #{input} is #{product(input)}"
else
  puts "Sorry. Unknown operation"
end

# different version using inject in the methods

def sum(num)
  1.upto(num).inject(:+)
end

def product(num)
 1.upto(num).inject(:*)
end

puts "Please enter a number greater than 0: "
input = gets.chomp.to_i

user_choice = ''
loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product"
  user_choice = gets.chomp.downcase
  if user_choice == 's' || user_choice == 'p'
    break
  else
    puts "Invalid. Please enter valid input"
  end
end

if user_choice == 's'
  puts "The sum of the integers between 1 and #{input} is #{sum(input)}"
elsif user_choice == 'p'
  puts "The product of the integers between 1 and #{input} is #{product(input)}"
else
  puts "Sorry. Unknown operation"
end