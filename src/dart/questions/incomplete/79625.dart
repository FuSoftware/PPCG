/*
Brain-Flak (a cross between Brainf**k and Flak-Overstow) is a stack-based esoteric language. Since this challenge was posted, the language has evolved and updated, but this first revision of the language is known as "brain-flak classic".

You must write a program or function that takes a string of Brain-Flak classic code, and evaluates it. It will also take a (possible empty) list of integers. There are the inputs to the Brain-Flak classic program.

The Language
Brain-Flak has two stacks, known as 'left' and 'right'. The active stack starts at left. If an empty stack is popped or peeked, it will return 0. There are no variables. When the program starts, each input is pushed on to the active stack in order (so that the last input is on top of the stack).

The only valid characters in a Brain-Flak program are ()[]{}<>, and they must always be balanced. If there are invalid characters, or the brackets are unmatched, you get undefined behaviour. Anything is valid.

There are two types of functions: Nilads and Monads. A nilad is a function that takes 0 arguments. Here are all of the nilads:

() +1.
[] -1.
{} Pop the active stack.
<> Toggle the active stack.
These are concatenated together when they are evaluated. So if we had a '3' on top of the active stack, this snippet:

()(){}
would evaluate to 1 + 1 + active.pop() which would evaluate to 5. <> evaluates to 0.

The monads take one argument, a chunk of Brain-Flak code. Here are all of the monads:

(n) Push 'n' on the active stack.
[n] Print 'n' as an int and a newline.
{foo} While active.peek() != 0, do foo. Evaluates to 0¹.
<foo> Execute foo, but evaluate it as 0.
These functions will also return the value inside of them, so

(()()())
Will push 3 and

[()()()]
Will print 3 but

[(()()())]
Will print and push 3.

When the program is done executing, each value left on the active stack is printed as an integer, with a newline between. Values on the other stack are ignored.

Rules:
Your program must support numbers in the (-128, 127) range, and a stack size of at least 255. If you support larger, great.

Underflow/overflow is undefined.

Sample IO:
The empty program:

Input: None

Output: None

Addition. Source:

({}{})
Input:

2, 3
Output:

5
Subtraction. Source:

({}<>){({}[])<>({}[])<>}<>
Input:

2, 3
Output:

-1
Multiplication. Source:

({}<>)<>({}[]){({}[])<>(({}))<>}<>{({}<>{})<>}<>
Input:

7, 8
Output:

56
Fibonacci. Source:

<>((()))<>{({}[])<>({}<>)<>(({})<>({}<>))<>}<>
Input:

5
Output:

13
8
5
3
2
1
1
Truth machine

{[({})]}
*/

f(String code, List<int> left){
  List stacks = [left,[]];
  int current_stack = 0;
  //Handle monads
  code = code.replaceAll('()', 'i').replaceAll('[]','d').replaceAll('{}','p').replaceAll('<>','t');
  print(code);

  

  return stacks[current_stack];
}

check(){
  print(f('({}{})', [2,3]));
  print(f('({}<>){({}[])<>({}[])<>}<>', [2,3]));
}