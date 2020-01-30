#Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones

#p flintstones.index('Betty')
be_index = []
flintstones.each_with_index{|name, idx| p idx if name.include?('Be')}