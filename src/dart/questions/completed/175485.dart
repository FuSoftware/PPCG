/*
Given two integers, output the two integers, and then the range between them:

Examples:
 Input        Output
 0,  5   ->   [0, 5, 1, 2, 3, 4]
-3,  8   ->   [-3, 8, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7]
 4,  4   ->   [4, 4]
 4,  5   ->   [4, 5]
 8,  2   ->   [8, 2, 7, 6, 5, 4, 3]
-2, -7   ->   [-2, -7, -3, -4, -5, -6]
*/

f(a,b)=>[a,b]+((a-b).abs()>1?List.generate((a-b).abs()-1,(i)=>(a>b?-i-1:i+1)+a):[]);
g(a,b)=>[a,b]+((a-b).abs()>1?List.generate((a-b).abs()-1,(i)=>(a>b?-1:1)*(i+1)+a):[]);

check(){
  print(f(0,5));
  print(f(-3,8));
  print(f(4,4));
  print(f(4,5));
  print(f(8,2));
  print(f(-2,-7));
}