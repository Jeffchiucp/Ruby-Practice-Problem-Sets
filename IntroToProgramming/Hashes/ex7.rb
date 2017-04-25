# Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# What's the difference between the two hashes that were created?

# The first hash that was created used a symbol x as the key.
# The second hash used the string value of the x variable as the key.

p my_hash.keys
p my_hash2.keys