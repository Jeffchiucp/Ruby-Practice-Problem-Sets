# The variable below will be randomly assigned as true or false. Write a method named time_of_day that,
# given a boolean as an argument, prints "It's daytime!" if the boolean is true and "It's nighttime!"
# if it's false. Pass daylight into the method as the argument to determine whether it's day or night.

daylight = [true, false].sample

# answer

def time_of_day(daylight)
  if daylight == true
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

daylight = [true, false].sample
time_of_day(daylight)