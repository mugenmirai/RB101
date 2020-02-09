def halvsies(array)
  array.partition {|item| array.index(item) < array.size / 2.0 }
end


=begin
arr = [1, 2, 3, 4]
arr1 = [5]
p arr.partition { |num| arr.index(num) < arr.size / 2.0 }
puts ''
p arr1.partition {|x| x }
#p arr.methods.sort



def halvsies(array)
  array.partition {|item| array.index(item) < array.size / 2.0 }
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
=end