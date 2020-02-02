arr = [[8, 13, 27], ['apple', 'banana', 'cantaloupe']]


# select integers > 13 && strings.size < 6





p solution

p arr

p (arr.map do |iarray|
  iarray.select do |element|
    if element.to_s.to_i == element
      element > 13
    else
      element.size < 6
    end
  end
end)
