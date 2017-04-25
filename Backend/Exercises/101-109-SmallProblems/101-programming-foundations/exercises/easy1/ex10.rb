# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus
#for a given salary. If the boolean is true, the bonus should be half of the salary.
# If the boolean is false, the bonus should be 0.

def calculate_bonus(num, boolean)
  if boolean == true
    bonus = num / 2
  else
    bonus = 0
  end
end

puts calculate_bonus(2800, true) == 1400  # true
puts calculate_bonus(1000, false) == 0  # true
puts calculate_bonus(50000, true) == 25000  # true