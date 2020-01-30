#string = ('ddaaiillyy ddoouubbllee')
#new_string = ''
#counter = 0
##counter2 = 1


def crunch(string)
  new_string = ''
  counter = 0
loop do 
  break if counter == string.size
  if string[counter] == string[counter + 1]
    counter += 1
  else
    new_string << string[counter]
    counter += 1
  end
end
  new_string
end



p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')