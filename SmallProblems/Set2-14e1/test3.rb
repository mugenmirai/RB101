def digit_list(input)
  step1 = input.to_s.split('')
  step1.map(&:to_i)
end




puts digit_list(12345)
puts digit_list(7)
puts digit_list(375290)
puts digit_list(444)