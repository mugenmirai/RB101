=begin 

input:  arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

  array collection, make up of hashes



output:  new array of hashes were ALL integers are even
  new_arr = [{b: [2,4,6]}, {e:.......



    algo:      select inner hashes from outer array
              check whether all k-v pairs values are even
              make a new array containing hashes of returns that prove positive

=end

#arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]#

#p arr.size 
#p arr.class
#p arr[0].class#
#

#hi =  arr.each_with_object([]) do |subhash, newarray|
#        subhash.each do |k, v|
#          newarray << subhash if v.flatten.all?{|x| x.even?}
#        end
#      end #
#

#p hi

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

p (arr.select do |subhash|
    subhash.all? do |k, v|
      v.all? do |num|
        num.even?
      end
    end
  end)


