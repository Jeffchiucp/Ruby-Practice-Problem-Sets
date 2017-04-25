# a program that prints odd numbers and skips the number 3

x = 0

#loop will run until x is larger than 10
while x <= 10
  if x == 3
    # if x evaluates to 3 then 1 will be added to x
    x += 1
    # continues the iteration
    next
    # if x is odd it will print it
  elsif x.odd?
    puts x
  end
  # adds 1 to x and it continues the loop
  x += 1
end
