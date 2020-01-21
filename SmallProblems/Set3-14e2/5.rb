print "What is your name?: "
user_name = gets.chomp
puts user_name.include?("!") ? "hello #{user_name[0..-2]}. why are we screaming?".upcase : "Hello #{user_name}."