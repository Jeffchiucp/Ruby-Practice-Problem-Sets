# In the following code, numbers isn't mutated because #select isn't a destructive method.
# However, there is a destructive version of #select named #select!.
# Modify the code so that #select mutates numbers.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select do |key, value|
                 value < 25
               end

p low_numbers
p numbers

# answer

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers  # {low: 10}
p numbers  # {low: 10}