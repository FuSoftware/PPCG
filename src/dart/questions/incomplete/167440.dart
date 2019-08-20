/*
Write a program or function that, given the coordinates of where a dart lands on a dartboard, return the score of that dart. Dart coordinates are given as two integers, x,y measured from the center of the dartboard, with millimeter precision.

How to score a dart
Darts is a game played by throwing a dart at a circular board. The dart board is divided into 20 equally sized "wedges". Starting from the top and going clockwise, the sections have values of 20,1,18,4,13,6,10,15,2,17,3,19,7,16,8,11,14,9,12,5. If your dart lands in the black or white parts of any of the wedges, you score the value indicated on the outside of that wedge. 
here's a picture of a dartboard.


However, if your dart lands in the outer green/red ring of the dartboard, you score double the points indicated on the outside of the wedge that you hit. Likewise, hitting the inner green/red ring (the one in between the two white/black sections), you score triple the number indicated on the outside of the wedge. If your dart hits the innermost circle (the red bulls-eye) you instead score 50 points and finally, if your dart hits the second-innermost circle (the green ring around the bulls-eye), you score 25 points.

The dimensions of the rings, measured from the center of the dartboard, are as follows:

image not to scale



Bullseye (50): [0mm-6mm)
25:            [6mm-16mm)
Inner Single:  [16mm-99mm)
Triple:        [99mm-107mm)
Outer Single:  [107mm-162mm)
Double:        [162mm-170mm)
Miss (0):       170mm+
Note 1: Pictures provided are for illustration purposes only, and are not to scale.

Note 2: Measurements given are approximate, and may not be accurate to a real dartboard.

Note 3: All measurements given are [inclusive-exclusive). For the purposes of this challenge, we're not going to worry about darts hitting the wire and bouncing off. If the dart lands "on the wire" with one of the radial lines, then it is up to the answerer to decide whether to break the tie clockwise or counter-clockwise. Tie breaking direction must be consistent, and indicated.

Note 4: Dartboard is hung in the standard way with the middle of the 20 section being directly above the bullseye, and the 3 section directly below the bullseye.

Input
Two integers representing the x,y coordinates of where the dart landed, measured in millimeters, relative to the center of the dartboard.

Output
A single integer, for the number of points that would be awarded to a dart that landed at the given coordinates.

Sample
0,0     -> 50
2,101   -> 60
-163,-1 -> 22
6,18    ->  1
-6,18   ->  5
45,-169 ->  0
22, 22  ->  4 (if tie-broken clock-wise)
            18(if tie-broken counter-clockwise)
-150,0  ->  11
-150,-1 ->  11
Scoring
code-golf. Fewest bytes in your source code wins
*/
import 'dart:math';
module(int a, int b){
  return sqrt(a*a+b*b);
}

angle(int a, int b){
  return atan2(b,a)*180/pi;
}

f(int x, int y){
  List<int> values = [6,13,4,18,1,20,5,12,9,14,11,8,16,7,19,3,17,2,15,10];
  num m = module(x,y);
  num p = angle(x,y);
  num n = (((p+10)/20))%20;
  num o = values[n.round()];
  print('$m [$p ${p/20%20} $n] [${n.round()} ${values.indexOf(r)}] $o');
  return m<6?50:m<16?25:m<99?o:m<107?3*o:m<162?o:m<170?2*o:0;
}

check(){
  var v = [
    [0,0,50],
    [2,101,60],
    [-163,-1,22],
    [6,18,1],
    [-6,18,5],
    [45,-169,0],
    [22,22,4],
    [-150,0,11],
    [-150,-1,11]
  ];

  v.forEach((w){
    print('${w} : ${f(w[0], w[1])} => ${w[2]}');
  });
}