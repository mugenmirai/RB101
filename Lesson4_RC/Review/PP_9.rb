def titleizer(string)
  string.split.map{|word| word.capitalize }.join(' ')
end


p titleizer('the flinststones rock')