# Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?

# ex5.rb:3:in `execute': wrong number of arguments (given 0, expected 1) (ArgumentError)
#         from ex5.rb:7:in `<main>'

# A: The method parameter block is missing the ampersand sign &
# that allows a block to be passed as a parameter.
