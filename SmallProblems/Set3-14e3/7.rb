def oddities(arr)
  result = []
  arr.length.times {|x| result << arr[x] if i.even? }
  result
end

p oddities([2, 3, 4, 5, 6]) 