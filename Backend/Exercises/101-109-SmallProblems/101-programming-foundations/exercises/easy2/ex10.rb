# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo) #
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# => Moe
# => Larry
# => CURLY
# => SHEMP
# => Harpo
# => CHICO
# => Groucho
# => Zeppo

# the first block takes each value of array1 and adds it to array2 by using << which is destructive
# the second block uses upcase! on array1 which mutates the caller thus array2 value is changed.
# this is an example of pass-by-reference