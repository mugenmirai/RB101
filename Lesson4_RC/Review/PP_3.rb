#Remove people with age 100 or greater

#reject or select

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }


p ages.select{|k,v| v < 100 }
p ages.reject{|k,v| v > 100 }

