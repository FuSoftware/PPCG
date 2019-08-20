/*
Oreoorererereoo
Given an input string that is similar to the word "oreo", give an ASCII representation of the cookie that is as wide as the input string (to ensure cookie stability).

Rules
The input is a non-empty string with no whitespace containing any combination of the strings "o" and "re", and containing only those strings.
The string "o" represents the solid cookie, while the string "re" represents the filling.
The output must be a stacked cookie that is as wide as the input string.
The cookie must overlap the filling by one character on each side
The characters used for the output don't have to match the output below (█ and ░), they just have to be different non-whitespace characters for the two parts of the cookie
A line return at the end is optional
Examples
Input: oreo
Output:
████
 ░░ 
████

Input: o
Output:
█

Input: re
Output: (two spaces)


Input: rere
Output:
 ░░ 
 ░░ 

Input: oreoorererereoo
Output:
███████████████
 ░░░░░░░░░░░░░ 
███████████████
███████████████
 ░░░░░░░░░░░░░ 
 ░░░░░░░░░░░░░ 
 ░░░░░░░░░░░░░ 
 ░░░░░░░░░░░░░ 
███████████████
███████████████
Since this is code golf the shortest answer wins, good luck :)
*/

f(s){var l=s.length,i=0;while(i<l){if(s[i]=='o'){print(''.padRight(l,'#'));i++;}else{print(' '.padRight(l-1,'-'));i+=2;}}}
g(s){var l=s.length,i=0,t='';while(i<l){if(s[i]=='o'){t+=''.padRight(l,'#')+'\n';i++;}else{t+=' '.padRight(l-1,'-')+'\n';i+=2;}}return t;}
h(s){s=s.replaceAll('re','p');var l=s.length,i;for(i=0;i<l;i++)print(s[i]=='o'?''.padRight(l,'#'):' '.padRight(l-1,'-'));}
k(s){s=s.replaceAll('re','p');var l=s.length,i=0;while(i<l)print(s[i++]=='o'?''.padRight(l,'#'):' '.padRight(l-1,'-'));}

m(s)=>s.replaceAll('o',''.padRight(s.length,'#')+'\n').replaceAll('re',' '.padRight(s.length-1,'-')+'\n');
l(s,{l='\n'})=>s.replaceAll('o',''.padRight(s.length,'#')+l).replaceAll('re',' '.padRight(s.length-1,'-')+l);

check(){
  print(l('oreo'));
  print(l('o'));
  print(l('re'));
  print(l('rere'));
  print(l('oreoorererereoo'));
}