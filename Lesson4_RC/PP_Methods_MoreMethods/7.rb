=begin 
return value should be [1,3]
it outputs 1\n2\n3\n



=end

rv = [1,2,3].any? do |num|
  puts num
  num.odd?
end
p rv 
