# write a method
# IN -> Takes positive integer (n) as argument
# DO ->
# OUT -> Displays a right triangle whose sides have (n) stars

def triangle(n)
  stars = 0
  spaces = n

  until stars == n + 1
    puts (" " * spaces) + ('*' * stars)
    stars += 1
    spaces -= 1
  end
end

