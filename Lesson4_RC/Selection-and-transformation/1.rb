#looping to select and transform


def select_vowels(str)
  selected_chars = ''
  counter = 0

  loop do 
    current_char = str[counter]

    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end

    counter += 1
    break if counter == str.size
  end
  selected_chars
end


p select_vowels 'Osashiburiidesune?'
p select_vowels 'Basking in the sunlight, as they enter the fray'

words = "She so high and mighty"
step1 =  words.delete((select_vowels(words)))
p step1.delete(" ")