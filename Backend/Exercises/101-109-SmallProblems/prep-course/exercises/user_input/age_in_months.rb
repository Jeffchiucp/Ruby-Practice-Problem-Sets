# Write a program that asks the user for their age in years, and then converts that age to months.

puts "Please enter your age in years."
age_in_years = ''
loop do
  age_in_years = gets.chomp
  if age_in_years.empty? || age_in_years == '0' || age_in_years.to_i.negative?
    puts "Please enter a valid number"
  else
    break
  end
end

puts "You are #{age_in_years.to_i * 12} months old!"
