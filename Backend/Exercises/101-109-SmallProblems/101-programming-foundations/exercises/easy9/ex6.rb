# write a method
# IN -> string
# OUT -> array that contains each word from the string along with it's length separated by a space
        # you may assume words in the string are separated by exactly one space


def word_lengths(string)
  word_count = []
  split_string = string.split

  split_string.map do |word|
    length = word.length
    word << " " << length.to_s
    word_count << word
  end

  word_count
end

def word_lengths(string)
  string.split.map { |word| "#{word} #{word.length}" }
end


word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []