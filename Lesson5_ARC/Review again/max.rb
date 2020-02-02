a = %w(albatross dog horse machigaita anamorphic bachelorettesongisgreat)

p a.sort {|a,b| b <=> a }

p a.max 

p a.max{|a,b| a.length <=> b.length }

p a.max(2)

p a.max(3).reverse

p a.max_by{|word| word.length }

p a.max_by(3){|word| word.length }
puts ''
p a.min 

p a.min(2){|a,b| a <=> b }
p a.min(2){|a,b| b.length <=> a.length }
puts ''

p a.min_by{|word| word.length}

