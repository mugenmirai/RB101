rv = [1,2,3].map do |num|
  if num > 1
    puts num 
  else 
    num
  end
end


p rv 

#we can determine the block's return value by looking at the return value of the last statement
#within the block