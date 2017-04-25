# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate.
# The program must compute the tip and then display both the tip and the total amount of the bill.

puts ">> Welcome to Tip Calculator!"
puts ">> How much was the bill?"
bill = gets.chomp.to_f
puts "What percentage would you like to tip?"
tip_rate = gets.chomp.to_f

tip_total = bill * (tip_rate / 100)
format_tip_total = format("%.2f", tip_total)
bill_total = (bill + tip_total)
format_bill_total = format("%.2f", bill_total)

puts "the tip is $#{format_tip_total}"
puts "The overall total is #{format_bill_total}"
