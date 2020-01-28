def doubled_number(numbers)
  doubled = numbers.map {|x| x * 2 }
end



my_numbers = [1, 4, 3, 7, 2, 6]
p my_numbers
puts ''
p doubled_number(my_numbers)
p my_numbers