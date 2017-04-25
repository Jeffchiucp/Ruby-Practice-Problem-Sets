# write a method
# IN -> two arguments, first is an array, second is a hash
        # the array will have 2 or more elements, that will produce a person's name when combined
        # the hash, will contain two keys (:title & :occupation) and appropriate values
# OUT -> return a greeting that uses the person's full name and mentions the person's title


def greetings(name, job)
  name = name.join(" ")
  "Hello, #{name}! Nice to have a #{job[:title]} #{job[:occupation]} around!"
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })