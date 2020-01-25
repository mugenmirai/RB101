#QUESTION 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.include?("Spot")

p ages.include?("Lily")



QUESTION2 = "Question 2"

munsters_description = "The Munsters are creepy in a good way."

p munsters_description[0].downcase + munsters_description[1,3].upcase + munsters_description[4].downcase + munsters_description.upcase[5,37]
p munsters_description.downcase.capitalize
p munsters_description.downcase 
p munsters_description.upcase 


QUESTION3 = "Question 3"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
p ages 

QUESTION4 = "Question 4"

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?('Dino')

QUESTION5 = "Question 5"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbels)
p flintstones

flintstones << "Dino"
p flintstones

new_items = %w(Dino Hoppy)

new_items.each {|x| flintstones << x }
p flintstones

QUESTION8 = "Question 8"
#not using the varible advice, as to not interfered with line 31
new_advice = "Few things in life are as important as house training your pet dinosaur."

radvice = new_advice.slice!(39..-1)
p new_advice
p radvice

QUESTION9 = "Question 9"
statement = "The Flintstones Rock!"
p statement.count('t')

QUESTION10 = "Question 10"

