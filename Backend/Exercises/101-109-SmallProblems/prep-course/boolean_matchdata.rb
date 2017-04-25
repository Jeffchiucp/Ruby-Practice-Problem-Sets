def has_a_b?(string)
  if /b/.match(string)
    puts "we have a match!"
  else
    puts "No match here..."
  end
end

has_a_b?("ballons")
has_a_b?("hockey")
has_a_b?("football")