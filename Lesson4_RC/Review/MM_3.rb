result = [1,2,3].reject do |num|
  num < 2
end

results = [1,2,3].reject do |num|
  "o"
end



p result 


p results 

=begin 

Reject returns a new array(collection) containing items where the block's return value is 'falsey'

=end