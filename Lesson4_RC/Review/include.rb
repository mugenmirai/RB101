


string = 'the quick brown fox' 

def select_vowels(string)
selected_chars = ''
string.split('').each{|l| selected_chars << l if 'aeiouAEIOU'.include?(l) }

selected_chars
end

p select_vowels 'I wandered lonely as a cloud'

p select_vowels('the quick brown fox') 