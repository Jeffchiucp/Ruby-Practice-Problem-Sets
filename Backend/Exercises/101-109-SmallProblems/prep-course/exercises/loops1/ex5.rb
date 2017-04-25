# Modify the code below so "Hello!" is printed 5 times.

say_hello = true

while say_hello
  puts 'Hello!'
  say_hello = false
end

# answer

5.times do
  puts "Hello!"
end

# or another way

say_hello = 0
while say_hello < 5
  puts "Hello!"
  say_hello += 1
end
