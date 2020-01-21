vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'suv', 'TrUcK', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'CAR']
#case sensitive
def count(array)
  new_array = array.map(&:downcase)
new_array.uniq.each {|word| puts "#{word} => #{new_array.count(word)}"}
end 

count vehicles

=begin 
After considering the handy methods that are available to arrays, and strings, we can take advantage
of not having to reinvent the wheel, or deal with basic loops.
We will chain methods together calling on the result of each step, and finally passing in a block.

Calling uniq on the array passed in as an argument will single out repetitive elements to one.
the for each of those elements we will pass a block that uses string interpolation to
output for each occurence on an element in the returned value of calling uniq on the original array
and mathcing it to invoking the count method on the orignal argument, thus giving us a list.

=end