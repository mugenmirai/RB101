string = 'ignore 77 the 444 numbers'

ok = []
 string.chars.each_with_index do |char, idx|
  idx.even? ? ok << char.upcase : ok << char.downcase
end

p ok.join


def staggered_case(strng)
  result = []
  strng.chars.each_with_index {|char, idx| idx.even? ? result << char.upcase : result << char.downcase }
  result.join
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


def stagies(string)
  string.chars.map.with_index { |char, idx| idx.even? ? char.upcase : char.downcase }.join
end
puts 

p stagies('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p stagies('ALL_CAPS') == 'AlL_CaPs'
p stagies('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'