# In this hash of people and their age, see if spot is present.
# Bonus: What are two other hash methods that would work just as well for this solution?

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# answer
puts ages.include?("Spot")

# bonus answer
puts ages.has_key?("Spot")
puts ages.member?("Spot")
