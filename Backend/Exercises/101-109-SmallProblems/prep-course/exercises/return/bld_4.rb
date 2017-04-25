# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# it will print both 'Dinner' and 'Breakfast' because we are calling 'puts' inside the method on 'Dinner'
# if 'puts' was not called inside the method, only 'Breakfast' would be returned