# Reformat the following case statement so that it only takes up 5 lines.

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

# answer

case stoplight
when "green" then puts "Go!"
when "yellow" then puts "Slow down!"
else               puts "stop!"
end
