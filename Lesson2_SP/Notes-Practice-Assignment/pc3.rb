#a method that takes an array of integers, and returns a new array with every other element.


array = [1,2,3,4,5,6,8]

def everyother(array)
  narray = []
  array.each_with_index{|x, i| narray << x if i.even? }
  narray
end

p everyother(array)