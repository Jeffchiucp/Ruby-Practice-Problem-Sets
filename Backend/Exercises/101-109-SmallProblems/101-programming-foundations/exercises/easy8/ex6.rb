# write a method
# IN -> two numbers, first num is starting number, second num is ending number
# DO -> print out all numebrs between given arguments, except if num is divisible by 3 or 5
        # if divsible by 3, print 'Fizz'
        # if divisible by 5, print "Buzz"
        # if divisible by 3 and 5, print "Fizzbuzz"

def fizzbuzz(start_num, end_num)
  fizzbuzz = []
  start_num.upto(end_num) do |num|
    if num % 3 == 0 && num % 5 == 0
      fizzbuzz << "Fizzbuzz"
    elsif num % 3 == 0
      fizzbuzz << "Fizz"
    elsif num % 5 == 0
      fizzbuzz << "Buzz"
    else
      fizzbuzz << num
    end
  end
  fizzbuzz.join(", ")
end

fizzbuzz(1, 15)