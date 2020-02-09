list = (1..4).to_a
p list 
p list.object_id

#p list.size.times { list.each { |x| list << list.shift }}
#p list 

#new_list = []
#p list.size.times { new_list << list.last.pop }
#p list 

p list.sort! {|a, b| b <=> a}
p list.object_id

def rvrs!(array)
  array.sort! { |a, b| b <=> a }
end

list2 = %w(a b e d c)
rvrs!(list2)
p list2
puts ''

p list = ['abc']
p rvrs!(list) == ["abc"]
p list == ["abc"]
puts ""
p listx = []
p rvrs!(listx) == []
p listx == []