# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# it prints 0, 1, 2, 3, 4, 10
# this is because 10 is the last line to be evaluated