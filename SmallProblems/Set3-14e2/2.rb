print "What is the length of the room in meters: "
length = gets.chomp.to_f
print "What is the width of the room in meters: "
width = gets.chomp.to_f

SQM_T0_SQF = 10.7639

areameters = length * width
areameters = areameters.round(2)
areafeet = (areameters * SQM_T0_SQF).round(2)

puts "The area of the room is #{areameters} square meters (#{areafeet} square feet)."

