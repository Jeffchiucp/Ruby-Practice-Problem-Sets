# Given this hash, figure out the total age of just the male members of the family

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

# answer

total_age = 0
munsters.each do |key, value|
  total_age += value["age"] if value["gender"] == "male"
end

p total_age