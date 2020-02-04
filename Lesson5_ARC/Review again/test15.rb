=begin 

input: array, 3 elements, inner hashes symbol key, array values pair
output: new array, containing only the hashes where all integers are even.


algo:      Need to access each element in an array (of hashes)//element reference
           need to access the values within the Value of inner hash(access values, iterate through arrays)
           inner arrays each value has to be even

           we can use a combination of sorting, mapping, and selecting


=end


arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

p arr.size
p arr.class
p arr[0].class
puts ''

result = arr.map do |hsh|
  hsh.select do |key, arrvalue|
    arrvalue.all?{|x| x.even?}
  end
end

p result
puts ''


solution = arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? {|num| num.even?}
  end
end

p solution 