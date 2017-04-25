# write a method
# IN -> string
# DO -> create a list of all subtrings from the given string starting at the beginning
# OUT -> an array of substrings

def substrings_at_start(string)
  substring = []
  chars = string.chars

  1.upto(chars.size) do |letter|
    substring << chars.slice(0, letter)
  end

  joined = substring.map do |subarr|
             subarr.join
           end

  joined
end

def substrings_at_start(string)
  result = []

  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end


substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']