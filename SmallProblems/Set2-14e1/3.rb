def digit_list(input)
  input.to_s.chars.map(&:to_i)
end

puts digit_list(12345)

def digit_list_s(input)
  step1 = input.to_s.split('')
  step1.map(&:to_i)
end

puts digit_list_s(12345) == [1,2,3,4,5]
p  digit_list_s(7) == [7]

##def digit_list(arg)#
#
#
#

##  puts arg
##  if arg > 1
##      #arg.to_s.split('')
##      (arg[0]..arg[-1])
##    elsif arg   < 0
##      "Only positive integers are allowed"
##    else
##      arg
##    end
##  end#
#

##puts digit_list(12345)#

#def list(idk)
#  idk
#end#

#input = 12345#

#a = %w(12345)
#ntos =  input.to_s.split('')
#p ntos 
#maps = ntos.map(&:to_i)
#p maps 