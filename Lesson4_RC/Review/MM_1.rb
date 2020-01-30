hi =  [1,2,3].select do |num|
  num > 5
  'hi'
end


p hi 

=begin 

#select performs selection based on the blocks return value.
In this problem 'hi' is a truthy value, thus returning a new collection with the same elements as
the original collection.


=end
