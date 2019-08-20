//1, 12, 23, 34, 45, 56, 67, 78, 89, 910, 1011, 1112, 1213, 1314, 1415, 1516, 1617, 1718, 1819, 1920, 2021, 2122, 2223, 2324, 2425, 2526, 2627, 2728, 2829, 2930, 3031, 3132, 3233, 3334, 3435, 3536, 3637, 3738, 3839, 3940, 4041, 4142, 4243, 4344, 4445, 4546
//https://oeis.org/A127421
//https://codegolf.stackexchange.com/questions/167818/concatenating-n-with-n-1

f(n)=>List.generate(n,(e)=>e<1?1:'$e${e+1}');
g(n)=>List.generate(n,(e)=>e==0?1:'$e${e+1}');
h(n)=>List.generate(n,(e)=>int.parse('$e${e+1}'));

check(){
  print(f(1));
  print(f(2));
  print(f(3));
  print(f(10));
}