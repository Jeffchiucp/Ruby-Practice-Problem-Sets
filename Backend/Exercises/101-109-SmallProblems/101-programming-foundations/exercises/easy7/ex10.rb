# write a method
# IN -> string
# DO ->
# OUT -> returns next to last work in the string
# you may assume the given string always contains at least two words

def penultimate(string)
  words = string.split
  words[-2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'