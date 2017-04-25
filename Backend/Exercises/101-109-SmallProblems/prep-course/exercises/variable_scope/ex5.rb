# What will the following code print, and why?

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# answer = Xyzzy
# The reason is because we are assigning the string 'yzzyX' to 'b' therefore 'a' remains the same