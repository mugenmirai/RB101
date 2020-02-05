# Given the string of chars a..z A..Z do as in the sample cases

# accum("abcd")    # "A-Bb-Ccc-Dddd"
# accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt")    # "C-Ww-Aaa-Tttt"




# You are given an array which contains only integers (positive and negative). 
#Your job is to sum only the numbers that are the same and consecutive. The result should be one array.

# You can asume there is never an empty array and there will always be an integer.

#p sum_consecutives([1,4,4,4,0,4,3,3,1]) == [1,12,0,4,6,1]
#p sum_consecutives([1,1,7,7,3]) == [2,14,3]
#p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]


=begin 

input: string
output: string

  testcases:   beggining of each new character is uppercase, 
                every repeated one is lower case "Qq" and multiplied by its index + 1

  possible solutions:  separate each character with a - 
                        compare each character to previous one, if its a new character upcase the first appereance





=end




string = "abcd"
#new_string = ''
#p string.split('').each_with_index{|l, idx| new_string << l * (idx + 1)}

p string.chars
counter = 1
string_array = string.chars
loop do 
  if string_array[counter] == string_array[counter + 1]
  (string_array[counter]* counter).upcase 
  break if counter = string_array.size - 1


def accum(str)
  str.split("").map.with_index do |char , idx| 
    char * idx +1. capitalize
    join ("0"_)


    char.upcase + (char_idx).downcase
    











