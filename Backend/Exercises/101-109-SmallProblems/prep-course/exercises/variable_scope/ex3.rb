# What will the following code print, and why?

a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# answer = 7 because we are not printing the return value of my_value(b) and since "a"
# cannot be mutated by the method it still evaluates to 7