

def include?(array, arg)
  array.count(arg) > 0 ? true : false
end

def include_?(array, arg)
  array.any? { |element| element == arg }
end


=begin 
arr = (1..5).to_a
p arr 


p arr.include?(3)


def include?(array, arg)#
  array.find{|ele| ele == arg } ? true : false
end

test = nil
p arr.any? { |item| tiem == test }


p include?(arr, 3)
puts ''
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil)# == false
=end