hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}



all_chars =  hsh.values.flatten.join.chars


vowels = 'aeiou'

ok =   all_chars.each_with_object([])do |char, arr|
   arr << char if vowels.include?(char)
        end

puts ok