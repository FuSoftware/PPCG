/*
BCD difference
Given an integer n, convert it to BCD (binary-coded decimal) by replacing each decimal digit with its 4-digit binary representation

 234 -> 0 0 1 0 0 0 1 1 0 1 0 0
Then rotate the list of binary digits in order to find the largest and smallest numbers, representable by this list without other rearrangements.

max: 1 1 0 1 0 0 0 0 1 0 0 0  (the entire list rotated left 6 times)
min: 0 0 0 0 1 0 0 0 1 1 0 1 (the entire list rotated right 2 times)
Convert these numbers back to decimal, treating the list of bits as regular binary and subtract the smallest from the largest:

1 1 0 1 0 0 0 0 1 0 0 0 -> 3336
0 0 0 0 1 0 0 0 1 1 0 1 -> 141

3336 - 141 -> 3195
The output is the difference of the largest and smallest numbers found.

Test cases:

234 -> 3195
1234 -> 52155
12 -> 135
975831 -> 14996295
4390742 -> 235954919
9752348061 -> 1002931578825
*/

f(int n,{i=0,b,r,R}){
  b=n.toString().split('').map(int.parse).map((c)=>c.toRadixString(2).padLeft(4,'0')).join('');
  r=[b];
  R=[n];
  for(;i<b.length;i++){r.add(r.last.substring(1)+r.last[0]);R.add(int.parse(r.last,radix:2));}
  R.sort();
  print('${R.last} - ${R.first} = ${R.last - R.first}');
  return R.last - R.first;
}

check(){
  var t = [
    [234,3195],
    [1234,52155],
    [12,135],
    [975831,14996295],
    [4390742,235954919],
    [9752348061,1002931578825],
  ];

  t.forEach((u){
    print('${f(u[0]) == u[1]}');
  });
}