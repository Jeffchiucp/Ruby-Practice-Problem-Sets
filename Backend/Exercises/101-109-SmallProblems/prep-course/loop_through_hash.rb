# my answer to exercise given on printing just keys, then just values, then both

person = {name: "kara", age: "26", gender: "female", hair: "brown"}

person.keys.each do |key|
  puts "#{key}"
end

person.values.each do |value|
  puts "#{value}"
end

person.each do |key, value|
  puts "Kara's #{key} is #{value}."
end

## refactored way per Launch School

person.each_key { |key| puts key }
person.each_value { |value| puts value }
person.each { |key, value| puts "Kara's #{key} is #{value}." }

