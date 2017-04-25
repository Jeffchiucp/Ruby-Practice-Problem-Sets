# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# answer => [1, 2, 3]
# 'hi' is the value that is returned to the block which has a "truthy" value thus the select method returns
# a new array with all of the elements in the original array.