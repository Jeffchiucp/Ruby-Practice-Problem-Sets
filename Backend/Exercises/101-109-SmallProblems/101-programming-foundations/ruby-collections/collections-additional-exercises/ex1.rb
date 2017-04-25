# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# answer

hsh = {}

flintstones.each_with_index { |k, v| hsh[v] = k }