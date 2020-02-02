# For each of these collection objects where the value 3 occurs, 
#demonstrate how you would change this to 4

arr1 = [1, [2, 3], 4]
p arr1.size 
p arr1[1][1]
p arr1[1][1] = 4
p arr1 


arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
p arr2.size
p arr2[0].class
p arr2[2]
p arr2[2] = 4
p arr2

hsh1 = {first: [1, 2, [3]]}

p hsh1.size 

p hsh1.values[0][2]
p hsh1.values[0][2] = [4]
p hsh1

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

p hsh2.size 
p hsh2[['a']].values[0][2]
p hsh2[['a']].values[0][2] = 4 
p hsh2