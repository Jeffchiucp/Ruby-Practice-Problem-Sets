def capitalize(words)
  if words.length > 10
    return words.upcase
  else
    return words
  end
end

puts capitalize("hello")