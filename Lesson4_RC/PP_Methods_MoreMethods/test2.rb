#count

=begin 

Returns the number of items in enum through enumeration.
If an argument is supplied, the number of items in enum that are equal to item are counted.
If a block is given, it counts the number of elements yielding a true value.


it should return => 2
let's test it out...

=end
answer = %w(ant bat caterpillar).count {|str| str.length < 4 }

p answer 


=begin 
LS Answer:

#count only counts an element if the block's return value evaluates to true.
#count considers teh truthiness of the block's return value.



=end
