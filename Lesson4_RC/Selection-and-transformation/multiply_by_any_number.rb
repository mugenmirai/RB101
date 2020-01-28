my_numbers = [1, 4, 3, 7, 2, 6]


def multiply(array, criteria)
  result_numbers = []
  counter = 0

  loop do 
    selected_item = array[counter]
    selected_item *= criteria
    result_numbers << selected_item
    counter += 1
    break if result_numbers.size == array.size
  end
  result_numbers
end



p multiply(my_numbers, 3)
p my_numbers
p multiply(my_numbers, 5)


def multiples(array, criteria)
  new_array = []
  counter = 0
  loop do 
    break if counter == array.size
    new_array << array[counter] * criteria
    counter += 1
  end
  new_array
end

p multiples(my_numbers, 3)


### method style

def really?(array, multiplier)
  array.map {|x| x * multiplier }
end
puts ''
p really?(my_numbers, 3)