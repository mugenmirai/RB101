=begin 


input: array of integers

output: string of number characters separated by default commas (can take argument)
, last character preceded by default or(can take string arguents)



=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

special = ':'

test1 = arr.join(" #{special} ")

p test1