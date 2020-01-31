munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

males = (munsters.select do |k,v|
  v["age"] if v['gender'] == 'male'
end)
p males

total_males_age = males.map{|k,v| v['age']}.sum
p total_males_age