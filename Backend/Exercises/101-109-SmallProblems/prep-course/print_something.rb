puts "Do you want me to print something? (y/n)"
input = gets.chomp

if input == "y"
  puts "something"
elsif input == "n"
  exit(0)
else
  puts "That is not a valid answer."
end
