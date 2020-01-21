require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)
puts Date.new(2020, 01, 21, Date::ITALY)
puts ''
def my_method(a,b=2,c=3,d)
  p [a,b,c,d]
end

my_method(4,5,6)
puts '' 
a = %w(a b c d e)
#puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }
puts ''
5.step(to: 10, by: 3) {|value| puts value }
5.step(to: 10, by: 3) # {|value| puts value }