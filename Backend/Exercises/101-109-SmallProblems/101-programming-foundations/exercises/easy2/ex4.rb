# Build a program that displays when the user will retire and how many years she has to work till retirement.

puts ">> What is your age?"
age = gets.chomp.to_i
puts ">> At what age would you like to retire?"
retire = gets.chomp.to_i

current_year = Time.new.year
years_to_work = retire - age
retire_year = current_year + years_to_work

puts "Its #{current_year}. You will retire in #{retire_year}
You have only #{years_to_work} years of work to go!"