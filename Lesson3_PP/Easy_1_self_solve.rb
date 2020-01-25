#1 If we were to call it with '!' it would print out a new array with 3 unique elements
#however we aren't doing anything with the returned value of invoking uniq to the array.
# [1, 2, 2, 3] will be printed.
# won't mutate the original array

numbers = [1,2,3]
numbers.uniq 
puts numbers 
p numbers 

#2
=begin 

'!' a bang suffix denotes that it will perform a destructive action, such as mutating a caller.

1. != we can use this in method definitions, loops, e.g. break if a != 100 as appossed to an until loop.

2. '!' will negate whatever it is placed after it.

3. '!' destructive action, mutates the caller

4. 

5. ? usually when defining methods, or invoking methods that return booleans.

6. Will make a true object true, and a false object false
=end

#3

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')
puts  advice 


#4
=begin 
.delete_at references the index of the array, so it will delete integer 2 or second element in the array.
.delete will delete all the elements that match the supplied argument

=end


#5

puts (10..100).include?(42)

#6

famous_words1 = "seven years ago..."
famous_words2 = "seven years ago..."

first_way = "Four score and " + famous_words1
puts first_way
second_way = "Four score and #{famous_words2}"
puts second_way


#7

nested = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
un_nested = nested.flatten
p un_nested

#8
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
barney = flintstones.flatten[4,2]
p barney