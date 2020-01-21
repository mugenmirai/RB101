vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = Hash.new 
  array.uniq.each {|element| occurrences[element] = array.count(element)}
occurrences.each {|e, c| puts "#{e} => #{c}"}
end

vehicles2 = [
  'car', 'car', 'truck', 'car', 'SUV', 'suv', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)


def count_occurrences_2(array)
  occurrences = Hash.new 
  new_array = array.map(&:downcase)
  new_array.uniq.each {|element| occurrences[element] = new_array.count(element)}

occurrences.each {|e, c| puts "#{e} => #{c}"}
end

count_occurrences(vehicles2)

