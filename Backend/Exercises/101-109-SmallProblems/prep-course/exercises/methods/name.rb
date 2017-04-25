# Write a method that accepts one argument, but doesn't require it. The parameter should default
# to the string "Bob" if no argument is given. The method's return value should be the value of
# the argument.

def person(name="Bob")
  return name
end

puts person  # Bob
puts person("Kara")  # Kara

puts person == "Bob"  # true
puts person("Kara") == "Kara"  # true