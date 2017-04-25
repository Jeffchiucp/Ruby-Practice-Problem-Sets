# Build a program that asks a user for the length and width of a room in meters and then displays
# the area of the room in both square meters and square feet.

puts ">> Welcome!"
puts ">> What is the length of your room in meters?"
length = gets.chomp.to_i
puts ">> What is the width of your room in meters?"
width = gets.chomp.to_i

square_meters = (length * width).round(2)
square_feet = (square_meters * 10.7639).round(2)

puts "The area of the room is #{square_meters} meters (#{square_feet} square feet)."

# bonues: ask for measurements in feet and displays square inches and square centimeters

SQFEET_TO_SQINCHES = 144
SQINCH_TO_SQCENTIMETERS = 6.4516

puts "What is the length of your room in feet?: "
length = gets.chomp.to_f
puts "What is the width of your room in feet?: "
width = gets.chomp.to_f

square_feet = length * width
square_inches = (square_feet * SQFEET_TO_SQINCHES).round(2)
square_centimeters = (square_inches * SQINCH_TO_SQCENTIMETERS).round(2)

puts "The area of your room is #{square_feet} square feet, which is #{square_inches} square inches, and
      #{square_centimeters} square centimeters."
