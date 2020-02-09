a = [1, 3, 5]
b = [3, 6, 9]

#p a.methods.grep(/m/).sort
#d = Hash.new 
#p d.methods.grep(/m/).sort

c = a + b 
p c.uniq


def merge(array, array2)
  (array + array2).uniq
end

p a 
p b 

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

p merge(a, b)
p a 
p b 