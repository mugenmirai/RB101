arr1 = %w(a b c).freeze
p arr1
arr2 = arr1.dup
p arr2 

arr2 << 'd'

p arr1
p arr2
arr2[0] = 'alpha'
arr2[1].upcase!
p arr2
p arr1