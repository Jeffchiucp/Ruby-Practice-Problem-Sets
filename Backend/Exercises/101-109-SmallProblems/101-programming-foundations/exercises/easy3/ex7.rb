# Write a method that returns an Array that contains every other element of an Array that is passed
# in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th,
# and so on elements of the argument Array.

def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

# two more additional ways to solve oddities

def oddities(array)
  odds = []
  array.each_with_index do |item, index|
    if index.even? || index == 0
      odds << item
    end
  end

  odds
end

def oddities(array)
  odds = array.select.with_index do |item, index|
          index.even?
         end
  odds
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
# method that returns the 2nd, 4th, 6th, etc elements of array

def even(array)
  even_elements = []
  index = 1
  while index < array.size
    even_elements << array[index]
    index += 2
  end
  even_elements
end

even([2, 3, 4, 6, 7, 9]) == [3, 6, 9]
