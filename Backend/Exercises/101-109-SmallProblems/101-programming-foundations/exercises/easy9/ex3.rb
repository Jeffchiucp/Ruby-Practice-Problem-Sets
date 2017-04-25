# write a method
# IN -> number
# OUt -> if argument is positive, return negative of that number
        # if argument is negative or zero, return that number

def negative(num)
  if num <= 0
    num
  else
    num.to_s.prepend("-").to_i
  end
end

def negative(num)
  -num.abs
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0