#print all odd #'s from 1..99

(1..99).to_a.select(&:odd?).each {|x| puts x } 
#could have stored in in a variables and passed puts to it.
