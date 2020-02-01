=begin 

UUID  8-4-4-4-12 <- pattern
     strings


=end



uuid = 'f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91'


digits = uuid.chars.map{|l| l.to_i}
digits.delete(0)
uuid_nums =  digits.uniq.sort


uuid_strings =  uuid.chars.select{|ch| ch.to_i == 0}.uniq.join.split('-').join.chars.sort


p uuid_strings
p digits 

uuid_random_pool =  uuid.split('-').join.chars.uniq.sort

p uuid_random_pool

def random_uuid
  uuid_random_pool = ["1", "2", "5", "6", "7", "8", "9", "a", "c", "d", "f"]
  puts "#{uuid_random_pool.sample(8).join}-#{uuid_random_pool.sample(4).join}-#{uuid_random_pool.sample(4).join}-#{uuid_random_pool.sample(4).join}-#{uuid_random_pool.sample(12).join}"
end

random_uuid
random_uuid
random_uuid
random_uuid
def uiid_gen
  uiid8 = ["1", "2", "5", "6", "7", "8", "9", "a", "c", "d", "f"].sample(8).join
  uiid4 = ["1", "2", "5", "6", "7", "8", "9", "a", "c", "d", "f"].sample(4).join
  uiid12 = ["1", "2", "5", "6", "7", "8", "9", "a", "c", "d", "f"].sample(12).join
  puts "#{uiid8}-#{uiid4}-#{uiid4}-#{uiid4}-#{uiid12}"
end
puts '' 
uiid_gen
uiid_gen
uiid_gen
uiid_gen
puts ''

p step1 = ('a'..'f').to_a
p step2 = (0..9).to_a 

uudi_origin = step2.concat(step1)
p uudi_origin
def u_gen(input)
  uuid = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, "a", "b", "c", "d", "e", "f"]
  uiid2 = uuid.sample(input).join
  uiid2 
end

def test_out
  "#{u_gen(8)}-#{u_gen(4)}-#{u_gen(4)}-#{u_gen(4)}--#{u_gen(12)}"
end

puts test_out
puts test_out
puts test_out
puts test_out

