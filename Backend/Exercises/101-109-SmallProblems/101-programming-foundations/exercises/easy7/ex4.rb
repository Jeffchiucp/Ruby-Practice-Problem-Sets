# write a method
# IN -> string
# DO -> change each uppercase letter with its lowercase letter and vice versa, all other characters should remain unchanged
# OUT -> new string with lowercase letters swapped with uppcase letters and vice versa.
# cannot use #String#swapcase in solution

def swapcase(string)
  characters = string.chars.map do |letters|
    if letters =~ /[a-z]/
      letters.upcase
    elsif letters =~ /[A-Z]/
      letters.downcase
    else
      letters
    end
  end
  characters.join
end


swapcase('CamelCase') #== 'cAMELcASE'
swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'