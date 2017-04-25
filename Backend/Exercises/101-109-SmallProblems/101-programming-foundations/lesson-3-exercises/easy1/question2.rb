# Question2: Describe the difference between ! and ? in Ruby.
# The exclamation point in ruby generally means that using it will modify the caller and using the question mark
# by convention means you are looking for a boolean value. There are many different ways you can use ! and ?


# And explain what would happen in the following scenarios:

1. what is != and where should you use it?
2. put ! before something, like !user_name
3. put ! after something, like words.uniq!
4. put ? before something
5. put ? after something
6. put !! before something, like !!user_name

# 1 checks to see if two values are equal or not; should be used when comparing values
# 2 using ! before a value negates that value ex: if x is true then !x is false
# 3 using ! after a method generally means that method is destructive(modifies the object its called on)
# 4 You can use ? as a ternary operator for if, else
# 5 if you put ? after a method you are looking for a boolean value to be returned
# 6 turns an object into its boolean equivalent