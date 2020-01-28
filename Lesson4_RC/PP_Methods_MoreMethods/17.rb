statement = "The Flintstones Rock"

letters = statement.split(' ').join('').split('').sort
result = {}
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result


#rv =  statement.split(' ').join('').split('').each_with_object({}) do |x, hash| 
#                  if hash[x].has_key?
#                    hash[x] = 
##p statement.each_with_object({}) {|x, hash| }#

#p rv
#step1 = statement.split(' ').join('').split('')
#p step1#

#result = {}
#step1.each do |x|
#  if result.has_key?(x)
#    result[x].push(1)
#  else
#    result[x] = [x]
#  end
#end
#p result



#p statement.chars each |x|
    

