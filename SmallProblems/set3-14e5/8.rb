

words = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
hsh = Hash.new(0)
p array = (0..19).to_a

loop do 
break if  words.size == 0
hsh[words.shift] = array.shift
end
retrieve =  hsh.keys.sort
p retrieve.map {|word| hsh[word]}


#p array 
#p words.each {|x| x.size }