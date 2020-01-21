def sum(nums)
  nums.to_s.split('').map(&:to_i).sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

def sumz(num)
  num.digits.sum 
end

