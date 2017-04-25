# Write a method named greet that invokes the following methods:

def hello
  'Hello'
end

def world
  'World'
end

# answer

def greet
  "#{hello} #{world}"
end

puts greet