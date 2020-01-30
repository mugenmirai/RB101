# how does count treat the block's return value?


#checking out the ruby docs



result = %w(ant bat caterpillar).count do |string|
  string.length < 4
end


p result 

=begin 


if a block is given, counts the number of elements for which the block returns a true value



=end