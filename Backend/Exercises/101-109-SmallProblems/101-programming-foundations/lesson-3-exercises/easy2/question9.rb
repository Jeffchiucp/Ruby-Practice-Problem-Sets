# Q9 Using #map!, shorten each of these names to just 3 characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# answer

flintstones.map! do |name|
  p name[0, 3]
end
