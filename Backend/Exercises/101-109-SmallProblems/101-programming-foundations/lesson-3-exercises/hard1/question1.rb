#What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = “hello world”
end

greeting

# Answer => greeting is nil because even though the block was not executed, intializing a variable in an if block will
# result in the variable being initialized to nil