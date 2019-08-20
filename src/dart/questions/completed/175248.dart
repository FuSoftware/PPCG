/*
I think the Collatz Conjecture is already well-known. But what if we invert the rules?

Start with an integer n >= 1.

Repeat the following steps:

If n is even, multiply it by 3 and add 1.

If n is odd, subtract 1 and divide it by 2.

Stop when it reaches 0

Print the iterated numbers.

Test cases:
 1        => 1, 0
 2        => 2, 7, 3, 1, 0
 3        => 3, 1, 0
10        => 10, 31, 15, 7, 3...
14        => 14, 43, 21, 10, ...
Rules:
This sequence does not work for a lot of numbers because it enters in an infinite loop. You do not need to handle those cases. Only printing the test cases above is enough.

I suggested to subtract 1 and divide by two to give a valid integer to continue, but it is not required to be computed that way. You may divide by 2 and cast to integer or whatever other methods that will give the expected output.

You need to print the initial input as well.

The output does not need to be formatted as the test cases. It was just a suggestion. However, the iterated order must be respected.

The smallest code wins.
*/
f(n){while(n>0){n=n%2>0?(n-1)>>1:(n*3)+1;print(n);}}
g(n){for(;n>0;n=n%2>0?(n-1)>>1:(n*3)+1)print(n);}

check(){
  g(1);
  g(2);
  g(3);
  g(10);
  g(14);
}