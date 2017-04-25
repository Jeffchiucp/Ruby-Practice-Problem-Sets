#In the age hash: throw out the really old people (age 100 or older).

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# answer

p ages.delete_if {|_, v| v > 100}
