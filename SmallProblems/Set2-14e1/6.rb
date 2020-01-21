def reverse_words(string)
  return string if string.size < 5
  string.reverse 
end

def reverse_wordz(string); string.size >= 5 ? string.reverse : string; end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
puts reverse_words('12345')

puts reverse_wordz 'Walk around the block' 
puts reverse_wordz 'hat'