arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

p (arr.map do |hsh|
    hsh.values.map do |x|
      x + 1
    end
  end)


ok = arr.each_with_object({}) do |ohsh, nhash|
      ohsh.each do |k, v|
        nhash[k] = v + 1 
    end
  end

p ok 
p arr 
new_arr = []
new_arr << ok 
p new_arr
puts ''

wtf = arr.each_with_object([]) do |hsh, arr|
  future_hash = {}
  hsh.each do |k, v|
      future_hash[k] = v + 1
    end
    arr << future_hash
  end

p wtf 