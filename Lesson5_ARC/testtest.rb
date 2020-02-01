def sum_consecutives(arr)
  result = []
  arr.each_with_index do |elem, idx|
    if (idx == 0)
      result << []
    else
      if (elem == arr[idx - 1])
        result[-2] << elem
      else
        result[-1] << arr[idx - 1]
        result << []
      end
    end
  end
  result.select { |subarr| subarr.length != 0 }.map { |subarr| subarr.sum }
end

p sum_consecutives([1,4,4,4,0,4,3,3,1]) == [1,12,0,4,6,1]
#p sum_consecutives([1,1,7,7,3]) == [2,14,3]
#p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]