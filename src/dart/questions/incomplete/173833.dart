/*
So we have
4281
that can be split into
4−2−8−1
or
22−21−23−20

So simple challenge: given a non-negative number as input, return consistent truthy and falsey values that represent whether or not the string representation of the number (in base 10 and without leading zeroes) can be somehow split into numbers that are powers of 2.

Examples:

4281      truthy (4-2-8-1)
164       truthy (16-4 or 1-64)
8192      truthy (the number itself is a power of 2)
81024     truthy (8-1024 or 8-1-02-4)
101       truthy (1-01)
0         falsey (0 cannot be represented as 2^x for any x)
1         truthy
3         falsey
234789    falsey
256323    falsey (we have 256 and 32 but then 3)
8132      truthy (8-1-32)

Tests for very large numbers (not really necessary to be handled by your code):
81024256641116  truthy (8-1024-256-64-1-1-16)
64512819237913  falsey

https://codegolf.stackexchange.com/questions/173833/can-the-number-be-split-into-powers-of-2
*/

f(s){
  
}

check(){
  print(2^2);
}