print "Give me a number: "
x = gets.to_i
print "Give me another number: "
y = gets.to_i
puts """ What would you like to do? Press:
1. for additiion
2. for substration
3. for multiplication
4. for division
"""
answer = gets.to_i 

case answer
  when 1
   puts x + y 
  when 2
  puts  x - y 
  when 3
  puts  x * y 
  when 4 
  puts  x.to_f / y 
end

puts "Thank you we are done."
