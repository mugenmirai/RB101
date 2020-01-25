title = "Flintstone Family Members"

puts title.center(50)
puts ''

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages
puts ''
p ages.key?("Spot")
p ages.include?("Spot")
p ages.member?("Lily")
puts ' '
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.match?("Dino")
p advice.match?('life')
p advice.include?("Dino")
p advice.class.methods.include?('grep')
p advice.class.methods.include?('gsub')

p advice.prepend("Test front one two, ")
p advice.concat(" saishu")

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p flintstones.assoc("Pebbles")
=begin
easy 1

!= <- "not equals"
? : is teh ternary operator for if..else
!!<some object> turns an object into their boolean equivalent
!<some object> turns an object into the opposite of their boolean equivalent


=end