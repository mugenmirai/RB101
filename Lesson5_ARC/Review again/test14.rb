
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

=begin 

rules:   __return an array  of color values & size values from a hash 
         __size values should be UPPERCASE if they are vegetables
         __colors should be Capitalized  if they are fruits

input: hash
        keys are strings
        values are hashes
output: array

test case = [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

    algo:   access each inner hash's hash value,
            within that inner level
            use hash element reference to check whether its a fruit or not
            if its a fruit, reference key colors key and capitalize return value
              otherwise we know its a vegetable, then access size key and Upcase return value


          map method returns a new array based on block r/v, we can use conditionals within inner hashes
          to select out our algo
=end

p hsh.size
p hsh.class
p hsh.keys
p hsh.values
p hsh.values[0].class
puts '' 


result =   hsh.each_with_object([]) do |(k,v), array|
            if v[:type] == 'fruit'
              v[:colors].each {|color| array << color.capitalize }
            else
              array << v[:size].upcase 
            end
          end

puts ""


new_result =  hsh.map do |k, v|
        if v[:type] == 'fruit'
              v[:colors].map {|x| x.capitalize}
            else
              v[:size].upcase 
            end
          end


p new_result








