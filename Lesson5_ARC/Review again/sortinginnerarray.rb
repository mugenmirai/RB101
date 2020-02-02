arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

p arr.size
p arr[0][0].class


p (arr.sort_by do |innarray|
  innarray.map do |num|
    num.to_i
  end
end)


p arr.sort_by {|innerarray| innerarray.map {|snum| snum.to_i }}