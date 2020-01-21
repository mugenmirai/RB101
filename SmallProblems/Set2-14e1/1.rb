#Repeat yourself

def repeat(string, num); num.times { puts string }; end

repeat('Hello', 3)

=begin 

on line 3 we define the repeat method, that takes two parameters 'string', and 'num'
on line 4 we utilize the local variables respectively set in the method implementation scope
calling the times method on num and passing it a block that calls puts on provide string
we use keyword end on line 5 closting the method implementation

on line 7 we invoke our repeat method and pass in the string 'Hello', and the interger 3

=end