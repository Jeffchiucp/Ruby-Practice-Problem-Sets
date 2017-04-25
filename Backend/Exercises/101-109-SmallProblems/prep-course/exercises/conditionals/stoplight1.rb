# In the code below, stoplight is randomly assigned as 'green', 'yellow', or 'red'.
# Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if
# stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

stoplight = ['green', 'yellow', 'red'].sample

# answer

case stoplight
when 'green'
  puts "Go!"
when "yellow"
  puts "Slow down!"
else "red"
 puts "Stop!"
end

