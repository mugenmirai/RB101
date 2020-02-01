arr = [[2], [3, 5, 7], [9], [11, 13, 15]]


p arr.class
p arr.size 


p( arr.map do |el|
  el.select do |num|
  num % 3 == 0
end
end
  )