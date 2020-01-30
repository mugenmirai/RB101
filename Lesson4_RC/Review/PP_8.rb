=begin 
A.  at each iteration we are calling inspect on the current element
so 1 its output to the screen, then we remove the first element at integer 0 wich is one,
at the next iteration each looks for index 1, which is now 3, it output that to the screen,
and we remove it on the next line, at the next iteratin it looks for index 2 and stops since
there is no integer 2, and only 2 elements in the current mutated array.

result should be 
1
3
[3,4]



B.
pop destructively removes the last element in the array, resulting in the removal of the last two.
1
2
[1,2]
=end