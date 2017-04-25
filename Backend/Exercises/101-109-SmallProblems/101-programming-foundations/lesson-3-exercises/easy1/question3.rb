# Q3 replace word "important" with "urgent" in this string

advice = "Few things in life are as important as house training your pet dinosaur"

# answer

advice.gsub! "important", "urgent"
puts advice #=> Few things in life are as urgent as house training your pet dinosaur
