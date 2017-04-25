cat = {age: "2", color: "mixed", gender: "female" }
cat_name = {name: "kennedy"}

# this version of merge is not destructive
puts cat.merge(cat_name)
puts cat

# uses ! which is destructive and changes the hash permanently

puts cat.merge!(cat_name)
puts cat