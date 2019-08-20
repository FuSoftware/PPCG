/*
Given a string that contains lowercase letters, encode that string with the alphabet cipher.

To encode with the alphabet cipher (I will be using the example hello):

First, convert each letter in the string to a number depending on its position in the alphabet (a = 1, b = 2, etc.) 8 5 12 12 15
Pad each number to two characters with 0s. 08 05 12 12 15
Join. 0805121215
Test cases
helloworld -> 08051212152315181204
codegolf -> 0315040507151206
alphabetcipher -> 0112160801020520030916080518
johncena -> 1015081403051401
Remember, this is code-golf, so the code with the fewest number of bytes wins.
*/

f(s)=>s.runes.map((t)=>'${t-96}'.padLeft(2,'0')).join('');
g(s)=>s.runes.map((t)=>(t>106?'0':'')+'${t-96}').join('');

check(){
  print(f('helloworld') + ' -> 08051212152315181204');
  print(f('codegolf') + ' -> 0315040507151206');
  print(f('alphabetcipher') + ' -> 0112160801020520030916080518');
  print(f('johncena') + ' -> 1015081403051401');
}