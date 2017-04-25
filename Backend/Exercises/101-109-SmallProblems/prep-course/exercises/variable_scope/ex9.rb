# What will the following code print, and why?

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# answer = 7  This demonstrates an example of variable shadowing. Because the outer 'a'
# has been assigned outside the block the "a += 1" has no effect. In order to fix this block
# we could change the inner "a" to something else