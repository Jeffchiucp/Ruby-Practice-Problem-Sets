# Write a method
# IN -> takes a string
# OUT -> returns a hash that contains 3 key-value pairs
        # number of characters in the string that are lowercase
        # number of characters in the string that are uppercase
        # number of characters in the string that are neither

def letter_case_count(string)
  string_counts = {}

  string_counts[:lowercase] = string.scan(/[a-z]/).size
  string_counts[:uppercase] = string.scan(/[A-Z]/).size
  string_counts[:neither] = string.scan(/[^a-zA-Z]/).size

  string_counts
end


letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }