# write a method
# IN -> first name, a space, and a last name passed as a single argument
# OUT -> returns a string that contains a last name a comma, a space, and the first name

def swap_name(name)
  name.split.reverse.join(", ")
end

swap_name("Kara Kelley")