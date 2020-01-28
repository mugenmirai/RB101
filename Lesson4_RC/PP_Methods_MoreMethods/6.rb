=begin 

tricky tricky tricky.......

since we are chainin the return value of desctructively calling pop on carterpillar,
the return value should be 'caterpillar', size of that is 11

=end

r_v = %w(ant bear caterpillar).pop.size
p r_v