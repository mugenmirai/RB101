#turn this array into a hash
# name are the keys
# values are the position in the array

#example-> flintstones = { "Fred" => 0 }



flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]




new_hash = flintstones.each_with_object({}){|name, hash| hash[name] = flintstones.index(name) }

puts new_hash
p flintstones