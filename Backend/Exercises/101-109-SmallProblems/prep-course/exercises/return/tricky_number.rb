# What will the following code print? Why? Don't run it until you've attempted to answer.

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# prints 1
# this is because the if/else statement has a conditional of true which means the if statement will be
# evaluated every time