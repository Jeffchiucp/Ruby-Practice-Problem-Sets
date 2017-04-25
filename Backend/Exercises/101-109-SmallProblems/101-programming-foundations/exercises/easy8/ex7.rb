# write a method
# IN -> string
# OUT -> new string in which every character is doubled

def repeater(string)
  string.chars.zip(string.chars).join
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
