#data structure: array of arrays
#use select/reject method
#return a new array IDENTICAL structure to the original
#must contain only integers that are multiples of 3
=begin 

algo:   None of them are inner nested arrays, each inner array is just one array
        with same class of elements: Integer


        reject/select method only care about the truthiness of blocks r/v, will return new array.
        map returns a new array with transformation based on return value of block
        in order to test if it's divisible by three:  num % 3 == 0



=end




arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

p arr.class
p arr.size
p arr[0].size

test1 =  arr.map do |inarr|
  inarr.select {|nums| nums % 3 == 0}
end




p test1