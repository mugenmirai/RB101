argument = 9


def triangle(arg)
  counter_plus = 1
  counter_minus = arg #(argument - 1)
  star = '*'
  space = ' '
  loop do
    puts (space * (counter_minus - 1)) + (star * counter_plus)
    counter_minus -= 1
    counter_plus += 1
    break if counter_minus == 0
  end
end

triangle 6


=begin

def triangle(n)
  [*1..n].each { |ele| puts format("%#{ele}s", '*' * i) }
end


=end