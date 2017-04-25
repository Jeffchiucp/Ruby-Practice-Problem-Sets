# write a method
# IN -> String
# DO -> create a list of all substrings of given string
# OUT -> return array of substrings ordered by where the string in the substring begins



def substrings_at_start(string)
  result = []

  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  result = []
  letters = string.dup

  until letters.size == 0
    result << substrings_at_start(letters)
    letters.slice!(0)
  end

  result.flatten
end

string = 'abcde'
substrings(string)
