nums = Array.new
%w(first second).each do |ord|
  print "Enter the #{ord} number: "
  nums << gets.to_i
end
%i(+ - * / % **).each do |op|
puts "#{nums[0]} #{op} #{nums[1]} = #{nums.inject(op)}"
end

