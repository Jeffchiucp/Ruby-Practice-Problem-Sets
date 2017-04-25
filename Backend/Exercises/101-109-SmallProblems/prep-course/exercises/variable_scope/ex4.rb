# What will the following code print, and why?
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# answer = Xy-zy  unlike the previous exercises, string are mutable