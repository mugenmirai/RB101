arr = ['10', '11', '9', '7', '8']

#desceding numeric value


p arr.size
p arr.class
p arr.min(5){|x, y| y.to_i <=> x.to_i }
p arr.sort{|a, b| b.to_i <=> a.to_i}