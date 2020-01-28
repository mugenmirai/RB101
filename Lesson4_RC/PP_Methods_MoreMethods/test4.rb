return_value = %w(ant bear cat).each_with_object({}) {|value, hash| hash[value[0]] = value }
p return_value