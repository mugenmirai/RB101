munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


#p munsters["Herman"]["age_group"] = 'adult'
#p munsters["Herman"]
#p munsters




munsters.map do |k, v|
  if munsters[k]['age'] < 18
    munsters[k]["age_group"] = 'kid'
  elsif munsters[k]['age'] < 65
    munsters[k]["age_group"] = 'adult'
  else
    munsters[k]["age_group"] = 'senior'
  end
end

puts  munsters
