# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']



arr1, arr2 = [1, 2, 3], ['a', 'b', 'c']

def interleave_1(array, array2)
  new_array = Array.new
  array.each_with_index do |element, idx|
    new_array << element << array2[idx]
  end
  new_array
end

p interleave_1(arr1, arr2)

def interleave_2(array, array2)
  array.zip(array2).flatten
end

p interleave_2(arr1, arr2)