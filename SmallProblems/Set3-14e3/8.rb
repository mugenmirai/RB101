def palindrome?(string); string == string.reverse; end 


p palindrome?('madam') 
p palindrome?('Madam')          # (case matters)
p palindrome?("madam i'm adam") # (all characters matter)
p palindrome?('356653') 