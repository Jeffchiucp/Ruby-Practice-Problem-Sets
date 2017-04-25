# Modify the code in exercise 2 to make the block execute properly.

# def execute(&block)
#   block
# end

# execute { puts "Hello from inside the execute method!" }

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }