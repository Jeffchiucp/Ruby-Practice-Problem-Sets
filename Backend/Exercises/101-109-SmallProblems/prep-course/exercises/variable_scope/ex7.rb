# What will the following code print, and why?

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# answer = 3   although the variable 'a' is set outside the block, local variable are visible within
# blocks. 'a' is first set to 1 then 2 and finally 3 after iterating through the array.