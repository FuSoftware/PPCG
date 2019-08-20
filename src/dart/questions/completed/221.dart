/*
You must evaluate a string written in Reverse Polish notation and output the result.

The program must accept an input and return the output. For programming languages that do not have functions to receive input/output, you can assume functions like readLine/print.

You are not allowed to use any kind of "eval" in the program.

Numbers and operators are separated by one or more spaces.

You must support at least the +, -, * and / operators.

You need to add support to negative numbers (for example, -4 is not the same thing as 0 4 -) and floating point numbers.

You can assume the input is valid and follows the rules above

Test Cases
Input:

-4 5 +
Output:

1
Input:

5 2 /
Output:

2.5
Input:

5 2.5 /
Output:

2
Input:

5 1 2 + 4 * 3 - +
Output:

14
Input:

4 2 5 * + 1 3 2 * + /
Output:

2
*/
F(l,n)=>l.removeAt(l.length-1-n);G(a,b,c)=>c=='+'?a+b:c=='-'?a-b:c=='*'?a*b:a/b;f(s){var l=[];s.split(' ').forEach((a){l.add('+-*/'.contains(a)?G(F(l,1),F(l,0),a):double.parse(a));});return l[0];}

check(){
  var t=[
    ['-4 5 +',1],
    ['5 2 /',2.5],
    ['5 2.5 /',2],
    ['5 1 2 + 4 * 3 - +',14],
    ['4 2 5 * + 1 3 2 * + /',2]
  ];

  t.forEach((u){
    print('${f(u[0])} => ${u[1]}');
  });
}