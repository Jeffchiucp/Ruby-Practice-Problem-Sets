arr = [1, 2, 3, 5, 6, 7]
p arr

p arr.map { |num| num + 2 }

## or can do it like this - both do the same thing

arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr