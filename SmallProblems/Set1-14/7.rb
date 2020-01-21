s = 'abc'
#we define a variable s that references a string.
#then we inspect the returned value of calling public_methods to local variable s initialied on line 1
# we pass all of this as an arguments to puts method.
p s.public_methods.size
p s.class 
p s.methods.size 
p s.public_methods(false).size

p s.methods.grep(/methods/)
