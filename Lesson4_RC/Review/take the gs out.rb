alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''


alphabet.split('').each { |l| selected_chars << l if l == 'g' }
p selected_chars