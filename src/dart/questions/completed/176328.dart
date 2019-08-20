/*
Task
Write a function or a program to find the number of rotations required by a wheel to travel a given distance, given its radius.

Rules
Input can be 2 positive rational numbers and can be taken in any convenient format.

Both inputs are of same unit.

There must not be any digits 0-9 in your code.

The output will be an integer (in case of float, round to infinity)

This is code-golf so shortest code wins

Examples
distance radius  output
10       1       2
50       2       4
52.22    4       3
3.4      0.08    7
12.5663  0.9999  3
*/

import'dart:math';f(a,b)=>(a/(pi+pi)/b).ceil();

check(){
  print('${f(10,1)} -> 2');
  print('${f(50,2)} -> 4');
  print('${f(52.22,4)} -> 3');
  print('${f(3.4,0.08)} -> 7');
  print('${f(12.5663,0.9999)} -> 3');
}