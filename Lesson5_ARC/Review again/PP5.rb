munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

p munsters.size

#array =  munsters.values.each_with_object([]) do |(k,v), array|
#      array << v['age'] if v['gender'] == 'male'
#    end
#p array

male_age = munsters.values.each_with_object([]) do |hsh, array|
      array << hsh['age'] if hsh['gender'] == 'male'
    end

p male_age.sum