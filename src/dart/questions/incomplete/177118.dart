/*
Given a positive integer, output a truthy/falsy value as to whether the number can eat itself.

Rules
Leftmost is the head, rightmost is the tail

If the head is greater than or equal to the tail, the head eats the tail and the new head becomes their sum.

If sum>=10 then the head is replaced by sum%10

sum=0 cannot be ignored, input number will never have any zeroes to the left

Example:

number=2632
head-2, tail-2

2632 -> 463
head-4, tail-3

463 -> 76
head-7, tail-6

76 -> 3
If only one digit remains in the end, the number can eat itself.
If at any point the head cannot eat the tail, the answer will be False.

number=6724
072
False (0<2)
Test Cases:
True:
[2632, 92258, 60282, 38410,3210, 2302, 2742, 8628, 6793, 1, 2, 10, 100, 55, 121]

False:
[6724, 47, 472, 60247, 33265, 79350, 83147, 93101, 57088, 69513, 62738, 54754, 23931, 7164, 5289, 3435, 3949, 8630, 5018, 6715, 340, 2194]
This is code-golf so shortest code wins.
*/

f(n,{h,t}){
  while(n>10){
    	h=int.parse(n.toString()[0]);
      t=n%10;
      if(h>=t) n=int.parse(((h+t)%10).toString()+n.toString().substring(1,n.toString().length-1));
      else return false;
  }
  return true;
}

check(){
  var t = [
    [2632, 92258, 60282, 38410,3210, 2302, 2742, 8628, 6793, 1, 2, 10, 100, 55, 121],
    [6724, 47, 472, 60247, 33265, 79350, 83147, 93101, 57088, 69513, 62738, 54754, 23931, 7164, 5289, 3435, 3949, 8630, 5018, 6715, 340, 2194]
  ];

  t[0].forEach((u){
    print('$u (true) : ${f(u) == true}');
  });

  t[1].forEach((u){
    print('$u : ${f(u) == false}');
  });
}