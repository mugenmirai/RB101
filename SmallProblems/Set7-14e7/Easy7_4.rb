string = 'Tonight on XYZ-TV'


silly = string.chars.map do |char|
  char.match?(/[A-Z]/) ? char.downcase : char.upcase
end

p silly.join 


def swapcase(strng)
  strng.chars.map {|char|char.match?(/[A-Z]/) ? char.downcase : char.upcase }.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'