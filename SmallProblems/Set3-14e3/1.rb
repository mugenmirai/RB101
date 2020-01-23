list = %w(1st 2nd 3rd 4th 5th last)
array = Array.new 
loop do #list.size == 0
  puts "Enter the #{list.shift} number: "
  number = gets.to_i
  array << number
  break if list.size == 0
end
puts array[0,5].include?(array.last) ? "The number #{array.last} appears in #{array[0,5]}." : "The number #{array.last} does not appear in #{array[0,5]}."
