/*
When we publish some software, we assign a version number to it. And users may want to update to the latest version of some software. So, it is the time to find out which version should be newer.

Input
Input two version numbers as strings.

In the context of this challenge, we only support version numbers which are some digits joined by dots.

A version number is a string which may only contain digits (0 ~ 9) and dots (.).
Dots would not be the first / last character of a version number.
There must be some digits between dots. No two dots may appear continuously.
All numbers in a version number would be less than 216.
Output
Compare the inputted version numbers and output whether first one is greater than / equals to / less than the second one. You are allowed to choose one of the following presentations:

Use positive number / zero / negative number, while zero means equal;
Use three constant distinct values;
Comparing
You are not required to implement the algorithm described in this section. Your submission is valid as long as it result the same output with this algorithm.

Version numbers are some decimal numbers joined by dots. We first split the two version numbers to arrays of numbers;
Padding the ending of arrays with zeros to make them have same length;
Compare from the first item to the last one:
If the two array items different, the greater number means greater version number
If they are the same, continue to compare the following items;
If all items in the array are equal, the two versions are equal.
Testcases
version1  version2  result
2         1         >
1.0.0     1         =
1.0       1.0.0     =
1.2.42    1.2.41    >
1.1.56789 1.2.0     <
1.10      1.2       >
1.20      1.150     <
18.04     18.4      =
7.010     7.8       >
1.0.0.1.0 1.00.00.2 <
00.00.01  0.0.0.1   >
0.0.1     0.1       <
42.0      4.2.0     >
999.999   999.999.1 <
2018.08.1 2018.08   >
*/
F(s,{t}){t=s.split('.').map(int.parse).toList();while(t.last==0)t.removeLast();return t;}f(a,b,{d,e,f,i=0}){d=F(b);e=F(a);f=e.length>d.length?d.length:e.length;for(;i<f;i++){if(e[i]>d[i])return 1;else if(e[i]<d[i])return-1;}return e.length>d.length?1:(e.length<d.length?-1:0);}

G(s,{t}){t=s.split('.').map(int.parse).toList();while(t.last<1)t.removeLast();return t;}g(a,b,{d,e,f,g,h,i=0}){d=G(b);e=G(a);g=d.length;h=e.length;f=h>g?g:h;for(;i<f;i++)if(e[i]!=d[i])return e[i]>d[i]?1:-1;return h>g?1:(h<g?-1:0);}


check(){
  var t = [
    ['2'        , '1'         , '1'],
    ['1.0.0'    , '1'         , '0'],
    ['1.0'      , '1.0.0'     , '0'],
    ['1.2.42'   , '1.2.41'    , '1'],
    ['1.1.56789', '1.2.0'     , '-1'],
    ['1.10'     , '1.2'       , '1'],
    ['1.20'     , '1.150'     , '-1'],
    ['18.04'    , '18.4'      , '0'],
    ['7.010'    , '7.8'       , '1'],
    ['1.0.0.1.0', '1.00.00.2' , '-1'],
    ['00.00.01' , '0.0.0.1'   , '1'],
    ['0.0.1'    , '0.1'       , '-1'],
    ['42.0'     , '4.2.0'     , '1'],
    ['999.999'  , '999.999.1' , '-1'],
    ['2018.08.1', '2018.08'   , '1']
  ];

  t.forEach((u){
    print('${f(u[0],u[1])} => ${u[2]}');
  });
}