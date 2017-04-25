# write a method
# IN -> string
# DO -> find the palindromic substrings
# OUT -> return a list of all substrings of the string that are palindromic

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

def palindromes(string)
  substrings = substrings(string)

  palindrome = substrings.select do |words|
              words.size > 1 && words == words.reverse
              end

  palindrome
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]