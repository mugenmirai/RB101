=begin 
In the second example both variables are referencing the same place in memory
by passing the bang suffix '!' when invoking the #upcase! method call
we are mutating the caller, this is a destructive action and both
variables now reference this new mutation.  This is not reasignment.


This is not reassingment.
Since both variables are referencing the same place in memory, invoking the #upcase method with a bang '!' mutates the caller.
This is a destructive action taken, thus both variables now reference the result of calling #upcase! on string 'Bob'

=end 

