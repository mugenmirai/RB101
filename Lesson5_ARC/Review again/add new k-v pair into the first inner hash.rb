arr = [{ a: 'ant' }, { b: 'bear' }]


p arr[0][:c] = 'cat'
p arr 
arr[0][:c] = []
arr[0][:c] << 'cat'
arr[0][:c] << 'dog'
p arr