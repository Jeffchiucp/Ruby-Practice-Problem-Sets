# Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

hash1 = {
  name: "Bob",
  age: 45,
  city: "Montréal",
  parent: ["Denis", "Emily"]
}

hash2 = {
  occupation: "Electrician",
  education: "DEP"
}

merge_hash_temporary = hash1.merge(hash2)
p merge_hash_temporary
p hash1
# hash1 remains unchanged

merge_hash_permanent = hash1.merge!(hash2)
p hash1
# hash1 is destructive with merge!