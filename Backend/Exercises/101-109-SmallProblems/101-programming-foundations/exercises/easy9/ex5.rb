# write a method
# IN -> string
# OUT -> return true if ALL alphabetic characters in the string are uppercase, otherwise false
         # characters that are non-alphabetic should be ignored

def uppercase?(string)
  string == string.upcase
end

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true