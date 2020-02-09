=begin 

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

=end



#string = 'AbCd +Ef'
#string2 = 'abCdef 123'
#p string.count('a-z')
#p string.count('A-Z')
#p string2.count('a-z')
#p string2.count('A-Z')#

#the_hash = {lowercase: 0, uppercase: 0, neither: 0}
#p the_hash
#the_hash[:lowercase] += string2.count('a-z')
#the_hash[:uppercase] += string2.count('A-Z')
#a = the_hash[:uppercase]
#b = the_hash[:lowercase]
#p a 
#p b
#c = string2.size - (a+b)
#the_hash[:neither] = c 
##the_hash[:neither] = (string.size - (a.size + b.size))
#p the_hash

def letter_case_count(strng)
  new_hash = {lowercase: 0, uppercase: 0, neither: 0}
  new_hash[:lowercase] += strng.count('a-z')
  new_hash[:uppercase] += strng.count('A-Z')
  new_hash[:neither] = (strng.size - (new_hash[:lowercase] + new_hash[:uppercase]))
  new_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

=begin
char =~ /[a-z]/ : This checks if the character is a lowercase letter between a and z. 
char =~ /[A-Z]/ : This checks if the character is an uppercase letter between A and Z. 
char =~ /[^A-Za-z]/ : This checks if the character is neither an uppercase letter nor a lowercase letter.

=end