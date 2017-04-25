# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# answer => 2
# In this block, the count method returns the numbers of strings that are less than 4 in length
# and returns an integer. In short, the count method only counts an element if the block's return value evaluates
# to true. If we wanted to find out about the method, we should look at the Ruby docs.
