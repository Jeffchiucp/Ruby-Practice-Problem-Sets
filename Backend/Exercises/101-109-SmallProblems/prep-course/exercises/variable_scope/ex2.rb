# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# answer = prints 7 because we are not printing the value of my_value(a) and because this method
# does not mutate the value of 'a' therefore 'a' still equals 7