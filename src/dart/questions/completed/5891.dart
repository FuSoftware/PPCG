/*
The challenge
Write a function that takes two positive integers n and k as arguments and returns the number of the last person remaining out of n after counting out each k-th person.

This is a code-golf challenge, so the shortest code wins.

The problem
n people (numbered from 1 to n) are standing in a circle and each k-th is counted out until a single person is remaining (see the corresponding wikipedia article). Determine the number of this last person.

E.g. for k=3 two people will be skipped and the third will be counted out. I.e. for n=7 the numbers will be counted out in the order 3 6 2 7 5 1 (in detail 1 2 3 4 5 6 7 1 2 4 5 7 1 4 5 1 4 1 4) and thus the answer is 4.

Examples
J(7,1) = 7      // people are counted out in order 1 2 3 4 5 6 [7]
J(7,2) = 7      // people are counted out in order 2 4 6 1 5 3 [7]
J(7,3) = 4      // see above
J(7,11) = 1
J(77,8) = 1
J(123,12) = 21
*/

f(n,k)=>n<2?1:(f(n-1,k)+k-1)%n+1;

check(){
  var t = [
    [7,1,7],
    [7,2,7],
    [7,3,4],
    [7, 11,1],
    [77,8,1],
    [123,12,21]
  ];

  t.forEach((u){
    print('${f(u[0],u[1])} => ${u[2]}');
  });
}