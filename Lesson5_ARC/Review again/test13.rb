arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

=begin 

input: array of arrays
output: new array similar in structure, ordered logically by odd numbers 

result: [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
    index:   2         0            1


algo:    select, calling sort+by with conditional to sort as we want


=end


result = arr.sort_by {|subarr| subarr.select {|nums| nums.odd? } }





p result