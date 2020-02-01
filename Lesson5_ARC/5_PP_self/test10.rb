array_hash = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]


#size 3
#class Array


p (array_hash.select do |el|
  el.map do |k, v|
    el[k] = v + 1
  end
end)
