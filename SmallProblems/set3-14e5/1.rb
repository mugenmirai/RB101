## 'Hello!'#

#test1 = 'Launch School'
#hi = test1.split('').map{|x| x.ord }
#p hi.sum#


def ascii_value(string)
  string.split('').map(&:ord).sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0


=begin 

other methods:  #bytes

=end