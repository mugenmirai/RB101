def crunch(string)
  string.gsub(/(.)\1+/, '\1')
end



p crunch('ddaaiillyy ddoouubbllee')
p crunch('')

