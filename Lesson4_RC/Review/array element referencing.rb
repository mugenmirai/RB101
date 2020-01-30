arr = [1, 'two', :three, '4']


p arr[1..-2]
p arr[3..3]
p arr[3] #element in that index is returned


p arr.fetch(3)[0..-1]