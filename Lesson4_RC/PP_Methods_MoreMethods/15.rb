flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


rv =  flintstones.any? {|x| x.start_with?('Be')}
p rv 

flintstones.each_with_index{|x, idx| puts idx if x.start_with?("Be")}
