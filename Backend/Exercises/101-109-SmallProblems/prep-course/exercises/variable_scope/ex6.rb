# What will the following code print, and why?

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# answer = error is raised as 'a' is a local variable outside the method thus it's not visible
# inside the method