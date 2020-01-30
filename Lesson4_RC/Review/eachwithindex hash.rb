{ a: "ant", b: "bear", c: "cat" }.each_with_index do |(k,v), index|
  puts "The index of #{k} => #{v} is #{index}."
end