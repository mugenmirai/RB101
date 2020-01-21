print "Please enter an integer greater than 0: "
int = gets.to_i
print "Enter 's' to compute the sum, 'p' to compute the product: "
ans = gets.chomp.downcase
sum = 1.upto(int).sum
product = 1.upto(int).inject(:*)
message1 = "The sum of the integers between 1 and #{int} is #{sum}."
message2 = "The product of the integers between 1 and #{int} is #{product}."
message3 = "Integer must be great than 0"
puts ans == 's' ? message1 : ans == 'p' message2