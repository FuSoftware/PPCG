/*
https://codegolf.stackexchange.com/questions/174180/string-analayser
Use any programming language to display "AWSALILAND" in such a way, so that each letter is in a new line and repeated as many times as its position in the English alphabet. For example letter, (A) should be displayed just once because it is the first letter of the alphabet. Letter D should be displayed 4 times because it is the 4th letter of the alphabet.

So, the output should be this:

A
WWWWWWWWWWWWWWWWWWWWWWW
SSSSSSSSSSSSSSSSSSS
A
LLLLLLLLLLLL
IIIIIIIII
LLLLLLLLLLLL
A
NNNNNNNNNNNNNN
DDDD
*/

f()=>'AWSALILAND'.runes.forEach((r)=>print(String.fromCharCodes(List.filled(r-64, r))));
g()=>'AWSALILAND'.split('').forEach((c)=>print(List.filled(c.runes.first-64, c).join()));
h()=>'AWSALILAND'.split('').forEach((c)=>print(List.filled(c.codeUnits[0]-64, c).join()));
i()=>print('AWSALILAND'.runes.map((r)=>String.fromCharCodes(List.filled(r-64, r))).join('\n'));

check(){
  i();
}