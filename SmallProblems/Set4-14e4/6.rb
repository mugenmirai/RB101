def runnin_total(array)
  narray = []
  array.each_with_index {|x, i| i > 0 ? narray << x + narray[i-1] : narray << x }
  narray
end


p runnin_total([14, 11, 7, 15, 20])


def running_total(array)
  sum = 0
  array.map {|x| sum += x }
end

p running_total([14, 11, 7, 15, 20])