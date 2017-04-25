# The following code outputs a countdown from 10 to 1.
# Modify the code so that it counts from 1 to 10 instead.

count = 10

until count == 0
  puts count
  count -= 1
end

# answer

count = 0
until count == 10
  count += 1
  puts count
end
