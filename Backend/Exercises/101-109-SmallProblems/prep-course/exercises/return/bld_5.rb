# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  'Dinner'
  puts 'Dinner'
end

p meal

# it prints 'Dinner' and 'Nil' because the return value of puts is Nil; Nil is visible because #p is used
# which allows 'Nil' to be visible in the output