# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
p hash.shift

# shift destructively removes the key-value pair in the hash and returns a two item array containing
# the remaining pairs. If we needed to find out about the Hash#shift method we could look at the Ruby
# docs.