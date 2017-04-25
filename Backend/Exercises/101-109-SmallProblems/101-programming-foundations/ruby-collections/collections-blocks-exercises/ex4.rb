# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
split = hsh.values.to_s.chars

split.each do |char|
  case char
  when 'a'
    puts 'a'
  when 'e'
    puts 'e'
  when 'i'
    puts 'i'
  when 'o'
    puts 'o'
  when 'u'
    puts 'u'
  end
end