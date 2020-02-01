=begin 

return a new array containing the same sub-arrays as original but ordered logically based on odd numbers

input: arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]    *array
                  
output: [[1, 8, 3], [1, 6, 7], [1, 4, 9]]     *new array
    index   2         0           1


    pattern:  every other element in the inner array is an odd number

    algo:  check size, select each element, sort via 0 and 1 index, return new array



=end


arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]] 
p arr.class
p arr.size 


p ( arr.select do |x|
  x.sort 
    end )
