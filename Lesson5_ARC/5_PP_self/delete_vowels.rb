=begin 

input: Array containing characters, 
output: New Array


    rules:  removes all vowels a,e,i,o,u

test case:   Y doesn't count as a voew (duh)
            leave all cases teh say 'YELLOW' == 'YLLW', green == grn


algo:

      take array containing string, separate characters, 
      use regex or method to match 'aeiou', remove, join string backtogether


=end


testcase1 = %w(abcdefghijklmnopqrstuvwxyz)
testcase2 = %w(green YELLOW black white)
p testcase1.size
p testcase1.class 
p testcase2
p testcase2.size
p testcase2.class

vowels = 'aeiou'

def remove_vowels(input)
input.each_with_object([]) do |word, array|
           array << word.delete('aeiouAEIOU')
end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']