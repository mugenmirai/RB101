=begin 
when non o fthe condition in an 'if' statment evaluate to true, the 'if' statement will return 'nil'

=end

returned_value = {a: 'ant', b: 'bear'}.map do |k,v|
  if v.size > 3
    v
  end
end

p returned_value
