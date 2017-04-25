# counts number of occurrences within an array

vehicles = %w(car car truck car SUV truck motorcycle motorcycle car truck)

def count_occurences(a)
  a.uniq.map { |x| [x, a.count(x)] }.to_h
end

puts count_occurences(vehicles)

# or another option

def count_occurrences1(array)
  occurrenes = {}

  array.uniq.each do |element|
    occurrenes[element] = array.count(element)
  end

  occurrenes.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences1(vehicles)
