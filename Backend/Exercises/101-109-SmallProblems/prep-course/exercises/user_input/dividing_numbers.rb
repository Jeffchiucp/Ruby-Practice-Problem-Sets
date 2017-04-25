# Write a program that obtains two Integers from the user, then prints the results of
# dividing the first by the second. The second number must not be 0, and both numbers should
# be validated using this method:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

  numerator = ''
  loop do
    puts ">> Please enter the numerator:"
    numerator = gets.chomp
    if valid_number?(numerator)
      break
    else
      puts ">> Invalid. Only integers are allowed"
    end
  end

  denominator = ''
  loop do
    puts ">> Please enter the denominator"
    denominator = gets.chomp
    if denominator == '0'
      puts "Invalid. Only integers are allowed!"
    elsif valid_number?(denominator)
      break
    else
      puts ">> Invalid. Only integers are allowed."
    end
  end

total = numerator.to_i / denominator.to_i

puts "#{numerator} / #{denominator} is #{total}"

