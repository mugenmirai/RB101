=begin 

#reject method

returns an array for all elements of enum for which given block returns false.

see .find_all .select .filter



=end

p [1,2,3].reject { |x| puts x }