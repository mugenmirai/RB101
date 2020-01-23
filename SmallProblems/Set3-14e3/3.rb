print "Please write a word or multiple words: "
words = gets.chomp
chars = words.split(' ').join.size
puts "There are #{chars} characters in \"#{words}\"."