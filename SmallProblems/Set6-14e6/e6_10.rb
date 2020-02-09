

a = ' '
star = '*'
#p a + '*'

b = '8'
space = ' '

value = 5
array = []
array << (a * (value - 1)) + b
value -= 1
array << a * (value - 1)
value -=1
array << a * (value - 1)
value -=1
array << a * (value - 1)

input = 5
puts ''
p array 
p array.reverse
puts array 
#puts array.reverse
puts '-'

indexx = 1
p (space * (input - 1)) + (star * indexx)
input -= 1
indexx += 1 
p (space * (input - 1)) + (star * indexx)


loop do