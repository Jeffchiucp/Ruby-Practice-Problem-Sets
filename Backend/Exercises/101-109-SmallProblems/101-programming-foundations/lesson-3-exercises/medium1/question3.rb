# The result of the following statement will be an error:Why is this and what are two possible ways to fix this?

#puts "the value of 40 + 2 is " + (40 + 2)

# answer

# You cannot add a string and numbers this way, instead would be easier to concatentate them like so:

puts "The value of 40 + 2 is #{40 +2}"

#or

puts "The value of 40 + 2 is " + (40 + 2).to_s
