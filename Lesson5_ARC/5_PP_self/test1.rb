#order this array of number strings by descending numberic value?


arr = %w(5 6 7 8 9 299 73 56 91)

car = arr.sort do |a,b|
  b.to_i <=> a.to_i
end


p car 



tarr = %w(5 6 7 8 9 299 73 56 91)
new_arr =  tarr.map{|snum| snum.to_i }.sort.reverse.map{|num| num.to_s}


p new_arr
p arr 


#carr = ['10', '11', '9', '7', '8']#

#barr = %w(5 6 7 8 9 299 73 56 91)
#def string_num_reverse(arr)
#step1 =  arr.map{|snum| snum.to_i }.sort.reverse#

#step2 = step1.map{|num| num.to_s}
#step2
#end#
#

#p string_num_reverse carr 
#p string_num_reverse barr 