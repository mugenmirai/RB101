arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]


=begin 

input: nested array
output: new hash

test case:  first element in each sub array is the whole key itself
            second element in each sub array is the value
            ex: "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
                |--------------key-------------------------| |-value-|
                test case only shows inner arrays containing two elements

algo:      *use a method that selects the elements via index, 
          *focuses on the object themselves (not the inner collection)
            returns a new collection (same size) without mutating the original collection.

=end



new_hash =  (  arr.each_with_object({}) do |ele, hsh|
                    hsh[ele[0]] = ele[1]
                                        end)
p arr.class 
p arr 
puts ''
p new_hash.class 
p new_hash