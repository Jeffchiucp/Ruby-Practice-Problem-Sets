# Modify the following loop so it iterates 5 times instead of just once.

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break
end

# answer

iterations = 0
while iterations != 5
  iterations += 1
  puts "Number of iterations = #{iterations}"
end