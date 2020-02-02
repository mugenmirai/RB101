arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p arr.size 


ok = arr.map do |arr1|
  arr1.sort do |a, b|
    b <=> a 
  end

end

p ok
p ok.sort_by {|x| x.map {|x| x.to_s}}