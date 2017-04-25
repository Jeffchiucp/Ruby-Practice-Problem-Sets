# method takes one argument, a positive integer,& returns a list of the digits

def digit_list(num)
  num.to_s.chars.map(&:to_i)
end

puts digit_list(1234) == [1, 2, 3, 4] # true
