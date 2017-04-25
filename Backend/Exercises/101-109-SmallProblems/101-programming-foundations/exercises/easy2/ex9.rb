# What does this print out? Can you explain these results?

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name


# => BOB
# => BOB

# The reason both name and save_name return 'BOB' is because upcase! is a destructive method in which it
# mutates the caller (name) which in turn changes the value of save_name. This is an example of pass-by-reference.

