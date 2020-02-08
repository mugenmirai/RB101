puts "Welcome to calculator"
print "What's the first number?: "
number1 = gets.to_i
print "What's the second number?: "
number2 = gets.to_i 
puts "What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide"
operator = gets.to_i 
if operator == 1
  result = number1 + number2
elsif operator == 2
  result = number1 - number2
elsif operator == 3
  result = number1 * number2
else
  result = number1.to_f / number2
end

puts "The result is #{result}"

