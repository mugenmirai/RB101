arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# Use map method to return a new array identical in structure to the original 
#values of integers incremented by 1



test1 = arr.map do |hsh|
  hsh.each_with_object({}) do |(k, v), inhash|
    inhash[k] = v + 1
  end
end



p test1
p test1.class
p test1.size
p test1[0].class
p arr 