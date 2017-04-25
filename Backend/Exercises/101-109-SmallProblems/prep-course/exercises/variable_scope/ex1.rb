# What will the following code print and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# answer = 7 because the variable 'a' is not mutable and at time of "puts", a still equals 7
# if however we called puts my_value(a) we would get 17 and 7 respectively

