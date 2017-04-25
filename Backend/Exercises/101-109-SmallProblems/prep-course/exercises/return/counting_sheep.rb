# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# result is 0, 1, 2, 3, 4, 5
# this is because times starts at 0 and counts to 4 however the times method will always return the
# initial integer therefore the last item returned is 5