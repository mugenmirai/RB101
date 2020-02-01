=begin 

test case:   [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

output: new array 


algo:     select the colors for fruits, and capitalize them
          select the size for vegetables and Upcase them

=end



hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

#p hsh.size
#p hsh.class 
#p hsh.keys[0].class


#p (hsh.map do |k, v|
#            v.map do |ik, iv|
#              if iv == 'fruit'
#                v[:type].capitalize
#              else
#                v[:size].upcase
#              end
#            end
#          end
#          )

hi =  hsh.each_with_object([]) do |(k, v), array|
          if v[:type] == 'fruit'
            array << v[:colors].map{|x| x.capitalize}
          else
            array << v[:size].upcase
          end
        end

p hi 
