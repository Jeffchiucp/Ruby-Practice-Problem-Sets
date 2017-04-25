# write a method
# IN -> String
# DO -> Capitalize each word of the string
# OUT -> return new string with each word of the given string capitalized

def word_cap(string)
 capitalized_words =  string.split.map {|word| word.capitalize }
 capitalized_words.join(" ")
end

# version below solves problem without using String#capitalize or String#upcase

CAPS = {'a' => 'A', 'b' => 'B', 'c' => 'C', 'd' => 'D', 'e' => 'E', 'f' => 'F',
        'g' => 'G', 'h' => 'H', 'i' => 'I', 'j' => 'J', 'k' => 'K', 'l' => 'L',
        'm' => 'M', 'n' => 'N', 'o' => 'O', 'p' => 'P', 'q' => 'Q', 'r' => 'R',
         's' => 'S', 't' => 'T', 'u' => 'U', 'v' => 'V', 'w' => 'W', 'x' => 'X',
        'y' => 'Y', 'z' => 'Z' }

def word_cap(string)
  words = string.dup
  words = words.split
  words.map { |word| word[0] = CAPS[word[0]] if word[0] =~ /[a-zA-Z]/ }
  words.join(" ")
end


word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
