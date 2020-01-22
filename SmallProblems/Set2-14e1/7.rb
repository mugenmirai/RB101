
def strings(num)
  result = Array.new
  num.times do |x| 
    ok = x.even? ? 1 : 0
    result << ok
  end

  result.join
end


puts strings 6 



