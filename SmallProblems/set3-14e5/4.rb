#swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
#swap('Abcde') == 'ebcdA'
#swap('a') == 'a'



word = 'Oh what a wonderful day it is'
def swap(string)
  string.split.map {|word| word.length > 1 ? word[-1] + word[1..-2] + word[0] : word }.join(' ')
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'