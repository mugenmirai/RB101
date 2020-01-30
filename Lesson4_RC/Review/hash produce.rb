produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}
#

#selection_h = {}
#selection_a = []#

#p produce.select {|k, v| v == 'Fruit'}


=begin 

input: hash
output: new hash

      select k-v pairs where value == 'Fruit'
      output that result into a jash
      result should be a hash with only k-v pairs

      we can reference k-v pairs by their keys from an array or values

=end



fruit_hash = produce.select {|k,v| v == 'Fruit' }

fruit_hash = produce.select {|k, v| v == "Fruit"  }

p produce 


p fruit_hash
puts fruit_hash


#mention dont reinvent the well
