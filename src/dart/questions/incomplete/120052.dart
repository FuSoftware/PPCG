/*
Task
Given one non-whitespace printable character, make a 3x3 square representation of that input. For example, if the input is #, then the output is:

###
# #
###
Rules
The output format is strict, although a trailing newline is allowed. It means that the space in the middle is required, and also that the two newline characters separating the three lines are required.
Testcases
Input: #

Output:

###
# #
###
Input: A

Output:

AAA
A A
AAA
Input: 0

Output:

000
0 0
000
Scoring
This is code-golf. Shortest answer in bytes wins.
 */

f(s)=>'$s$s$s\n$s $s\n$s$s$s';
check(){
  print(f('a'));
  print(f('b'));
}