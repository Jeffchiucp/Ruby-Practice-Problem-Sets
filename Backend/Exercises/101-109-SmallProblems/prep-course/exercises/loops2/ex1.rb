# Write a loop that prints numbers 1-5 and whether the number is even or odd

count = 0
loop do
  break if count >= 5
  count += 1
  if count.odd?
    puts "#{count} is odd"
  elsif count.even?
    puts "#{count} is even!"
end
end