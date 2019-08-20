/*
I can't believe we don't have this already.. It's one of the most important data-structures in programming, yet still simple enough to implement it in a code-golf:

Challenge
Your task is to implement a stack that allows pushing and popping numbers, to test your implementation and keep I/O simple we'll use the following setup:

Input will be a list of non-negative integers
Every positive integer n indicates a push(n) and every 0 indicates a pop() - discarding the top element.

Output will be the resulting stack
Example
For example if we're given [12,3,0,101,11,1,0,0,14,0,28]:

12301011110014028[12][3,12][12][101,12][11,101,12][1,11,101,12][11,101,12][101,12][14,101,12][101,12][28,101,12]
Output will be: [28,101,12]
Rules
Input will be a list of non-negative integers in any default I/O format
you may use a negative integer to signify the end of a stream of integers
Output will be a list/matrix/.. of the resulting stack
your choice where the top element will be (at the beginning or end), the output just has to be consistent
output is flexible (eg. integers separated by new-lines would be fine), the only thing that matters is the order
you may use a negative integer to signify the bottom of the stack
You're guaranteed that there will never be a 0 when the stack is empty
Examples
[] -> []
[1] -> [1]
[1,0,2] -> [2]
[4,0,1,12] -> [12,1]
[8,3,1,2,3] -> [3,2,1,3,8]
[1,3,7,0,0,0] -> []
[13,0,13,10,1,0,1005,5,0,0,0] -> [13]
[12,3,0,101,11,1,0,0,14,0,28] -> [28,101,12]
*/
List l;
h(l){while(l.contains(0)){l.removeRange(l.indexOf(0)-1, l.indexOf(0));}return l;}
i(l){while(l.contains(0)){l.removeAt(l.indexOf(0)-1); l.remove(0);}return l;}
f(l){var m=[];l.forEach((n){n>0?m.add(n):m.removeLast();});return m;}
g(l,{m=List}){l.forEach((n){n>0?m.add(n):m.removeLast();});return m;}


check(){
  print(g([]));
  print(g([1]));
  print(g([1,0,2]));
  print(g([4,0,1,12]));
  print(g([8,3,1,2,3]));
  print(g([1,3,7,0,0,0]));
  print(g([13,0,13,10,1,0,1005,5,0,0,0]));
  print(g([12,3,0,101,11,1,0,0,14,0,28]));
}