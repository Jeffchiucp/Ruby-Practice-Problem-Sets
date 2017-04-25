# Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

numbers = 1..99
numbers.select {|num| puts num if num.even?}