# Given a string that consists of some words and an assortment of non-alphabetic characters, write
# a mthod that reutns the string with all of the non-alphabetic characters replaced by spaces.
# if 1 or more non-alphabetic characters occur in a row, you should only have one space in the result

def cleanup(sen)
  new_sen = sen.gsub(/[^a-z]/, ' ')
  new_sen.squeeze
end

p cleanup("---what's my +*& line?") == ' what s my line '