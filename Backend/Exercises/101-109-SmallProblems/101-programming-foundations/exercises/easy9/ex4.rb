# write a method
# IN -> integer
# OUT -> return array of all integers in seqence between 1 and the argument

def sequence(num)
  sequence_array = []
  1.upto(num) do |number|
    sequence_array << number
  end
  sequence_array
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]