/*
Challenge
Write the shortest program or function to calculate the Luhn Algorithm for verifying (credit card) numbers.

Luhn algorithm explained
From RosettaCode, this algorithm for the purposes of this challenge is specified as such, with the example input of 49927398716:

Reverse the digits, make an array:
    6, 1, 7, 8, 9, 3, 7, 2, 9, 9, 4
Double the numbers in odd indexes:
    6, 2, 7, 16, 9, 6, 7, 4, 9, 18, 4
Sum the digits in each number:
    6, 2, 7, 7, 9, 6, 7, 4, 9, 9, 4
Sum all of the numbers:
    6 + 2 + 7 + 7 + 9 + 6 + 7 + 4 + 9 + 9 + 4 = 70
If the sum modulo 10 is 0, then the number is valid:
    70 % 10 = 0 => valid
IO Rules
Input: A string or number (your choice), in your language's input/output format of choice

Output: A truthy or falsy value, respectively, indicating whether or not the input is valid according to the test above.

Notes / Tips
Try not to accidentally post your own credit card or account numbers, if you use them to test :)

If the input is invalid and impossible to process with the specified algorithm (i.e, too short to work with), you can do whatever you want, including blow up my computer.

However, the previous bullet does not mean that your language can do whatever it wants with Numbers that are too large for it to handle. If your language isn't capable of handling a test case, then consider taking a string as input.

Examples
The following examples were validated with this Python script; if you think one is wrong or have a question, just ping @cat.

49927398716      True
49927398717      False
1234567812345670 True    
1234567812345678 False
79927398710      False
79927398711      False
79927398712      False
79927398713      True
79927398714      False
79927398715      False
79927398716      False
79927398717      False
79927398718      False
79927398719      False
374652346956782346957823694857692364857368475368 True
374652346956782346957823694857692364857387456834 False
8 False **
0 True  **
** according to the Python implementation, but you may do anything because these are too short to be eligible by a strict adherence to the specification.

If any of the above invalidates existing answers (though I believe that should not be possible), then those answers are stil valid. However, new answers, in order to be valid, should follow the specification above.
*/

/*
Reverse the digits, make an array:
    6, 1, 7, 8, 9, 3, 7, 2, 9, 9, 4
Double the numbers in odd indexes:
    6, 2, 7, 16, 9, 6, 7, 4, 9, 18, 4
Sum the digits in each number:
    6, 2, 7, 7, 9, 6, 7, 4, 9, 9, 4
Sum all of the numbers:
    6 + 2 + 7 + 7 + 9 + 6 + 7 + 4 + 9 + 9 + 4 = 70
If the sum modulo 10 is 0, then the number is valid:
    70 % 10 = 0 => valid
*/

f(s,{i=0})=>s.split('').reversed.map(int.parse).map((n)=>i++%2>0?n*2:n).map((n)=>n>9?n-10+1:n).fold(0,(p,e)=>p+e)%10==0;
g(s,{i=0})=>s.split('').reversed.map(int.parse).map((n)=>i++%2>0?n*2:n).map((n)=>n>9?n-10+1:n).reduce((p,e)=>p+e)%10==0;

check(){
  var t = [
    '49927398716'      ,
    '49927398717'      ,
    '1234567812345670' ,    
    '1234567812345678' ,
    '79927398710'      ,
    '79927398711'      ,
    '79927398712'      ,
    '79927398713'      ,
    '79927398714'      ,
    '79927398715'      ,
    '79927398716'      ,
    '79927398717'      ,
    '79927398718'      ,
    '79927398719'      ,
    '374652346956782346957823694857692364857368475368' ,
    '374652346956782346957823694857692364857387456834' ,
    '8' ,
    '0'
  ];

  t.forEach((u){
    print(f(u));
  });
}