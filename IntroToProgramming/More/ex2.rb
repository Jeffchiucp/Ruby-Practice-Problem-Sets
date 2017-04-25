# What will the following program print to the screen?
# What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# Nothing is printed to the screen because the block is
# never activated with the .call method.
# The method returns a Proc object.