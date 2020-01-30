fruits = %w(apple banana pear)
p fruits 

transformed_elements = []

fruits.each {|word| transformed_elements << word + 's'}
p fruits 
p transformed_elements