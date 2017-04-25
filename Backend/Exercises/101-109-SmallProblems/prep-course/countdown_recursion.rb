def countdown(n)
  if n <= 0
    return n
  else
    puts n
    countdown(n - 1)
  end
end

puts countdown(-3)


