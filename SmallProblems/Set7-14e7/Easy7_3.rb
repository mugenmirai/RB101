# word_cap('four score and seven') == 'Four Score And Seven'




string = "\"quoted\""

p string.start_with?('"')
p string.start_with?('"')


string2 = 'the javaScript language'

string3 = 'this is a "quoted" word'
arrayz = []
string3.split(' ').each do |word|
   word.start_with?('"') ? arrayz << word : arrayz << word.capitalize
end

puts arrayz.join(' ')

strng = 'this is a "quoted" word'

def word_cap(strng)
  result = strng.split(' ').each_with_object([]) do |word, array|
    word.start_with?('"') ? array << word : array << word.capitalize
  end
  result.join(' ')
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

puts ''

blah = 'this is a "quoted" word'

p blah.split.map(&:capitalize).join(' ')