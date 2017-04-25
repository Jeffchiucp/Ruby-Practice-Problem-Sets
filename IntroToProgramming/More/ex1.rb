def check_lab(word)
  if word =~ /lab/
    puts "'lab' is in the word \"#{word}\""
  else
    puts "'lab' does not exist in the word \"#{word}\""
  end
end

# def check_lab(word)
#   if /lab/ =~ word
#     puts word
#   else
#     puts "No match"
#   end
# end

check_lab("laboratory")
check_lab("experiment")
check_lab("Pans Labyrinth")
check_lab("elaborate")
check_lab("polar bear")