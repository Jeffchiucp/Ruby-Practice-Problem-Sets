arr = [1, 3, 5, 7, 9, 11]
num = 3

puts arr.include?(num)    # true

# or

arr.each do |number|
  if number == num
    puts "#{num} is in the array"
  end
end