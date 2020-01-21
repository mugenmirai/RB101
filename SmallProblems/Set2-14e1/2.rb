def is_odd?(num); num.odd?; end
def be_odd?(num); num % 2 != 0; end 
def this_odd?(num); num.remainder(2) != 0 ; end 

puts is_odd? 2
puts is_odd? 5
puts is_odd? -17
puts is_odd? -8
puts is_odd? 0
puts is_odd? 7
puts ''
puts be_odd? -17
puts ''
puts this_odd? 2
puts this_odd? 5