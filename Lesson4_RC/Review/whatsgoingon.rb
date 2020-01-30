# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]

#string = "abcddcbA"
#p string.size
#p string.size - 2
#counter = 0
#result = []
#hi = 0.upto(string.size - 2 ).each do |index1|
#  (index1 + 1).upto (string.size - 1) do |index2|
#    result << string[index1..index2]
#  end
#end#

#p result

def substrings(string)
  result = []
  0.upto(string.size - 2).each do |first_letter_index|
    (first_letter_index + 1).upto (string.size - 1) do |last_letter_index|
      result << string[first_letter_index..last_letter_index]
    end
  end
  result
end

string = 'four'
p string.size 
p string.size - 2
p string.size - 1
puts ''
puts substrings "four"
puts ''

=begin 

0.upto(2).each do |idx|
    (idx + 1).upto(3) do |eidx|
    result <<[idx..eidx]
   end
  end
  result
end


=end