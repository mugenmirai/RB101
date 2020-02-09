def multisum(num)
  [*1..num].select {|x| x % 3 == 0 || x % 5 == 0}.sum
end


p multisum 3
p multisum 1000