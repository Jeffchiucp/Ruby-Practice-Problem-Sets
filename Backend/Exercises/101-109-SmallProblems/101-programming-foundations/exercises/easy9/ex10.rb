# write a method
# IN -> an array of fruits with quantities
# DO -> convert it into an array of the correct number of each fruit
# OUT -> return new converted array


def buy_fruit(array)
  amounts = []
  array.map do |subarr|
    subarr.last.times do |word|
      amounts << subarr.first
    end
  end
  amounts
end

# or another solution using a one-liner

def buy_fruit(array)
  array.map {|fruit, quantity| [fruit] * quantity }.flatten
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]