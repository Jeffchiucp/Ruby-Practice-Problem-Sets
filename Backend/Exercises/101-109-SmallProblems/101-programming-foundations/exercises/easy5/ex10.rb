# write a method that will take a short lines of text and print within a box.

def print_in_box(str)
 horizontal_rule = "+#{'-' * (str.size + 2)}+"
 empty_line = "|#{' ' * (str.size + 2)}|"

 puts horizontal_rule
 puts empty_line
 puts "| #{str} |"
 puts empty_line
 puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')