# Write a program that requests two integers from the user, adds them together, and then displays
# the result. Furthermore, insist that one of the integers be positive, and one negative; however,
# the order in which the two integers are entered does not matter.

# Do not check for positive/negative requirement until after both integers are entered,
# and start over if the requirement is not met.

# You may use the following method to validate input integers:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do # main loop

  first_number = ''
  loop do
    puts "Please enter a positive or negative integer: "
    first_number = gets.chomp
    if valid_number?(first_number)
      break
    else
      puts "Invalid. Enter a valid number"
    end
  end

  second_number = ''
  loop do
    puts "Please enter another positive or negative integer: "
    second_number = gets.chomp
    if valid_number?(second_number)
      break
    else
      puts "Invalid. Enter a valid number"
    end
  end

  loop do
    if first_number.to_i.positive? && second_number.to_i.positive?
      puts "One number must be positive and one must be negative."
      puts "Please start over"
      break
    elsif first_number.to_i.negative? && second_number.to_i.negative?
      puts "One number must be positive and one must be negative."
      puts "Please start over"
      break
    else
      total = first_number.to_i + second_number.to_i
      puts "#{first_number} + #{second_number} is #{total}"
      exit(0)
    end
  end
end
