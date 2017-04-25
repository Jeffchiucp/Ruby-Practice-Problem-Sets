# write a method
# IN -> string
# OUT -> new string where every consonant character is doubled
        # vowels, digits, punctuation, and whitespace shouldn't be doubled

def double_consonants(string)
  new_string = ''
  vowels = 'aeiouAEIOU'

  string.chars.each do |letter|
    if letter =~ /[^a-zA-z]/ || vowels.include?(letter)
      new_string << letter
    else
      new_string << letter << letter
    end
  end
  new_string
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""