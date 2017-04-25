# write a method
# IN -> a string (will never be empty)
# OUT -> return the middle character (or characters if string length is even)

def center_of(string)
  middle = string.length / 2
  if string.length.odd?
    string[middle]
  else
    string[middle -1, 2]
  end
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'