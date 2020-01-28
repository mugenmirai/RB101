statement = "The Flintstones Rock"

letters = statement.split(' ').join('').split('').sort
result = {}
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result