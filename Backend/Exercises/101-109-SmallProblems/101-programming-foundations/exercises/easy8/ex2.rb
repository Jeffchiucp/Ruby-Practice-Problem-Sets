# Create a simple madlib program
  # DO -> prompt for a noun, a verb, an adverb, and an adjective
  # DO -> inject those words into a story that you create

def prompt(msg)
  puts "#{msg}"
end

def get_noun
  prompt "Enter a noun:"
  noun = gets.chomp.downcase
  if noun.empty?
    get_noun
  end
  noun
end

def get_verb
  prompt "Enter a verb:"
  verb = gets.chomp.downcase
  if verb.empty?
    get_verb
  end
  verb
end

def get_adverb
  prompt "Enter an adverb:"
  adverb = gets.chomp.downcase
  if adverb.empty?
    get_adverb
  end
  adverb
end

def get_adjective
  prompt "Enter an adjective:"
  adjective = gets.chomp.downcase
  if adjective.empty?
    get_adjective
  end
  adjective
end

noun = get_noun
verb = get_verb
adverb = get_adverb
adjective = get_adjective

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample
