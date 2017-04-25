# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

numbers = 1..99
numbers.select {|num| puts num if num.odd? }

# another option

1.upto(99) {|num| puts num if num.odd?}

# another option

num = 0

until num > 99
  puts num if num.odd?
  num += 1
end