/*
99 bugs in the code
The adaption of "99 bottles of beer on the wall" for computer science where the bugs increase instead of the bottles decreasing is often re-posted around the internet. Example T-Shirt Here.

I think it'll be interesting to see potential recursion and random number generation across a huge variety of languages and finding the most efficient ways to do it.

There's a fair few other challenges to do with 99 bottles of beer but none seem to have an increasing and decreasing number!

Challenge
Your program or function should take no input and then print

99 bugs in the code

99 bugs in the code

Take one down and patch it around

X bugs in the code

(blank line)

Where X is the previous integer minus 1 plus a random integer in the range [-15,5].
You can merge the minus 1 into the random integer, hence allowing the range [-16,4].
Ranges can be exclusive, so minus one plus (-16,6) or (-17,5).

The random integers don't have to be evenly distributed they just have to all be possible.

The program always starts with 99 bugs.

You can ignore the grammatical error of "1 bugs".

The program should stop when the number of bugs is 0 or negative and print

0 bugs in the code

There should never be a negative number of bugs. The ending should look like

Y bugs in the code

Y bugs in the code

Take one down and patch it around

0 bugs in the code

(blank line)

0 bugs in the code

A trailing new line is acceptable.

Your code can be a full program or a function.
There is no input.
The output should be to stdout or returned.
Warnings/errors in logs/STDERR are okay as long as STDOUT has the required text. See here for more info.
This is code-golf so the shortest code in bytes wins.
*/

import'dart:math';f({n=99,m=' bugs in the code\n'}){while(n>0){print('$n$m$n$m\Take one down and patch it around');n=n+Random().nextInt(20)-16;n=n<0?0:n;print('$n$m');}}

check(){
  f();
}