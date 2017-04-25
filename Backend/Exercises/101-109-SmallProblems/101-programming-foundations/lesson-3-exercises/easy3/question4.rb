# Shorten this sentence and remove everything starting from "house". Review the String#slice! documentation, and use that method to make the return
# value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

advice = "Few things in life are as important as house training your pet dinosaur."

# answer

p advice.slice!(0, advice.index("house"))
