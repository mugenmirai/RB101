#Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


result = munsters.select {|names, details| details['age'] if details['gender'] == 'male'}


p (result.each_with_object([]) do |(k,v), array|
  array << v['age']
end).sum


