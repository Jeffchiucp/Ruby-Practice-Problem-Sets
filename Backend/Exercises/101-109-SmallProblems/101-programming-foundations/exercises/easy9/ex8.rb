# write a method
# IN -> 2 integers; the first is a count, the second is the first number of a sequence the method will create
# OUT -> an array containing same # of elements as the count & the value of each element will be multiples of the second number
        # if count == 0 return an empty array

def sequence(count, start)
  sequences = []
  return [] if count == 0

  1.upto(count) do |num|
    sequences <<  num * start
  end

  sequences
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
