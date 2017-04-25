# write a method
# IN -> integer
# DO -> return 2 times the number provided unless the argument is a double number, those should be returned as-is
# A double number is a number with even number of digits whose left side digits as the same as the right side digits

def twice(num)
  string_version = num.to_s.chars
  middle = string_version.length / 2
  first_half = string_version.slice(0, middle)
  second_half = string_version.slice(middle, middle)

  if string_version.length.even? && first_half == second_half
    num
  else
    num * 2
  end
end

twice(3) == 6
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10