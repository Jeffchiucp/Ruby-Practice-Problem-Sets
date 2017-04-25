# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# it prints 0, 1, 2 then 'Nil'
# this is because once sheep is greater than or equal to 2 then return is evaluated which exits the method
# 'Nil' is printed because that is the return value of puts and its printed because we used p