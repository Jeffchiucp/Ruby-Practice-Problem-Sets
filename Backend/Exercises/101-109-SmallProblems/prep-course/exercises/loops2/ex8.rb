# Using next, modify the code below so that it only prints even numbers.

number = 0

until number == 10
  number += 1
  puts number
end

# answer

number = 0

until number == 10
  number += 1
  if number.odd?
    next
  else
    puts number
  end
end
