/*
Introduction:
Two resistors, R1 and R2, in parallel (denoted R1 || R2) have a combined resistance Rp given as:

RP=R1⋅R2R1+R2

Three resistors, R1, R2 and R3 in parallel (R1 || R2 || R3) have a combined resistance (R1 || R2) || R3 = Rp || R3 :

RP2=R1⋅R2R1+R2⋅R3R1⋅R2R1+R2+R3

or

RP2=RP⋅R2RP+R2

where Rp was calculated using the first formula. This can of course be extended to an indefinite number of resistors.

Challenge:
Take a list of positive resistor values as input, and output the combined resistance if they were placed in parallel in an electric circuit. You may not assume a maximum number of resistors.

Test cases:
1, 1
0.5

1, 1, 1
0.3333333

4, 6, 3
1.3333333

20, 14, 18, 8, 2, 12
1.1295

10, 10, 20, 30, 40, 50, 60, 70, 80, 90
2.6117  
*/

double f(a)=>a.reduce((p,e)=>p*e/(p+e));

check(){
  print(f([1, 1]));
  print(f([1,1,1]));
  print(f([4,6,3]));
  print(f([20,14,18,8,2,12]));
  print(f([10,10,20,30,40,50,60,70,80,90]));
}