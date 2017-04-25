# Given this data structure, and without using the Array#flatten method, write some code to return a new array
# containing all of the items in the original array but in a flat structure.

arr = [['stars', 'river'], 'letter', ['leaves', ['horses', 'table']]]

# answer

arr.each_with_object([]) do |item1, new_array|
  if item1.size >= 5
    new_array << item1
  else
    item1.each do |item2|
      if item2.size >= 5
        new_array << item2
      else
        item2.each do |item3|
          new_array << item3
        end
      end
    end
  end
end