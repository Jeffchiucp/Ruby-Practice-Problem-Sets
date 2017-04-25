# ex4
# Append "11" to the end of the original array.
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# Prepend "0" to the beginning.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr << 11
arr.unshift(0)


# ex5
# Get rid of "11". And append a "3".
arr.pop()
arr << 3

# ex6
# Get rid of duplicates without specifically removing any one value.
arr.uniq!


# ex7
# What's the major difference between an Array and a Hash?
# The major difference between an array and a hash is that a hash
# contains a key value pair for referencing by key.


# ex8
# Create a Hash using both Ruby syntax styles.
hash = {:name => 'bob'} # <= old version
hash = {name: 'bob'} # <= new version

