# What will the following code print, and why?

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# answer = error raised due to 'a' not being an undefined local variable
# To fix, we need to initialize 'a' prior to the block