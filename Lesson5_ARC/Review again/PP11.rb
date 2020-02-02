arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]


test1 = arr.map do |hsh|
  hsh.select do |k, v|
    v % 3 == 0
  end
end

p test1