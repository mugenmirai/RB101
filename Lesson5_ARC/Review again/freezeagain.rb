arr = ["a", "b", "c"].freeze

p arr
p arr.size
p arr.frozen?

arr[2] << 'd' 
arr[1] << 'eam'
p arr 
