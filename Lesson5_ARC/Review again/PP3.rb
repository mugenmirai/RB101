# Reference the character 'g'


arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
p arr1.size
p arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

p arr2.size
p arr2[0].class
p arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
p arr3.size
p arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

p hsh1.size
p hsh1.class
p hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
p hsh2.size
p hsh2.class
p hsh2[:third].keys[0]