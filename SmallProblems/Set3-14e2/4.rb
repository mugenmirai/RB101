print "What is your age?: "
age = gets.to_i
print "At what age would you like to retire?: "
retire = gets.to_i
year = Time.now.year
difference = retire - age
retirement = year + difference 
puts "Its #{year} you will retire in #{retirement}"
puts "You have only #{difference} years of workd to go! 頑張って！"