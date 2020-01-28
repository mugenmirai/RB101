flintstones = %w(Fred Barney Wilma Betty Pebbles BamBam)
p flintstones.class
fhash = {}
flintstones.each_with_index {|x, idx| fhash[x] = idx }
p fhash