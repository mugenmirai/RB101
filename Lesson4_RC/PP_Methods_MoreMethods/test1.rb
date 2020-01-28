=begin 

It should return an array with the same values




LS Answer: Select performs selection based on the truthiness of the block's return value.
The return value will always be hi (truthy value).



corretion: It returns a new array with the same values, select seeks out truthyness.


=end

alpha =  [1,2,3].select do |num|
  num > 5
  'hi'
end

p alpha 
