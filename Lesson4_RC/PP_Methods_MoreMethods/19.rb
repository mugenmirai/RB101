words = "the flintstones rock"
# should be; words = "The Flintstones Rock"


def my_titleize(input)
  input.split.map {|x| x.capitalize}.join(' ')
end

puts my_titleize(words)