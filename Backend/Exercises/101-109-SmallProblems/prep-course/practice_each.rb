names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Kara']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end
