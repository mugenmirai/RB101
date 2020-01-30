#amend this array so that the names are all shortnd to just the first three characters

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
answer =  flintstones.map{|name| name[0,3]}

p answer
p flintstones