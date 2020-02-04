=begin 

don't use Array#to_h
return a hash where the Key is the key is the first Item in each subarray, and the value is second item


exp = {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}


input: multi-dimensional array
output: hass of element 1 as key, element 2 as value


notes: each inner array is made up of two elements
        only need to focus on 0 and 1 index
    populate a new hash, pass in each array item at index 0 as key, pass in elemtn index 1 as value



=end



arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

p arr.class
p arr.size 
p arr[3].size
puts ''


result = arr.each_with_object({}) do |inarr, newhash|
  newhash[inarr[0]] = inarr[1]
end

p result
p result.size
p result.class