arr = [[[1, 2], [3, 4]], [5, 6]]

p arr.size
p arr.class
p arr[0].class



hammer =  arr.map do |innerarray|
  innerarray.map do |subarray|
    if subarray.class == Array
      subarray.map {|num| num += 1 }
    else
      subarray += 1
    end
  end
end

p hammer
p arr 