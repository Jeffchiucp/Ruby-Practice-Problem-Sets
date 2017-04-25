# write a method
# IN -> positive integer
# OUT -> returns that number with it's digits reversed

def reversed_number(num)
  num.to_s.chars.reverse.map(&:to_i).join.to_i
end

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # Note that zeros get dropped!
reversed_number(1) == 1