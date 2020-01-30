#create a hash that expresses the frequency with which each letter occurs in the provided string
#example:  { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

statement = "The Flintstones Rock"

split_array =  statement.split(' ').join('').split('').sort
p split_array

answer =  split_array.each_with_object({}) do |letter, hash|
                  hash[letter] = statement.count(letter)
                end

p answer 