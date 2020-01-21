print "What is the bill?: "
bill = gets.to_f
print "What is the bill percentage?: "
percent = gets.to_f
tip = (bill * percent/100).round(2)
total = bill + tip 
puts "The tip is #{tip}"
puts "The total is #{total}"
# ¯\_(ツ)_/¯ 