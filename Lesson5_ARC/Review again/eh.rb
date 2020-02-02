arr = [{ a: 'ant', b: 'elephant' }, { c: 'cat' }]

p arr.size
p arr[0].class

#select all elements key == first letter of value
p arr[0].values


test1 = arr.select {|hsh| hsh.all? {|k,v| k.to_s == v [0]} } 
p test1