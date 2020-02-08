# frozen_string_literal: true

# method that takes an array of strings and returns a string that is all those
# strings concatenated together

array = %w[here are some strings in array form lets joing them].to_a
def concat(array)
  array.join(' ')
end

p concat array





