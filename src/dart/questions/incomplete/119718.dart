/*
My dog is called Rex. Every time I scold him, he seems not very impressed and the only times I see him react is when I pronounce his name. If I say

Rex, I told you not to do this! You're making me angry Rex!

all he hears is

Rex, * **** *** *** ** ** ****! ***'** ****** ** ***** Rex!

The challenge : given an input string, your program must output the same string where all alphabetic characters have been turned to stars, except the characters in the appearances of the word Rex, who must be left untouched. The non-alphabetic characters are also left untouched.

Details : The challenge is case-insensitive, thus rex must be left untouched also. The word Rex can be part of another word, so for example anorexic must be rendered as ***rex**.

Update : as the initial text of this challenge did not clarify how underscores or numbers or accentuated characters should be treated, I do not make any special requirement on those characters. Thus, a solution is valid as long as characters in a-zA-Z (and also the one mentioned in the examples, ,!".) are handled correctly.

Test cases :

Input : Rex lives in Rexland.

Output : Rex ***** ** Rex****.

Input : To call Rex, just say "Rex".

Output : ** **** Rex, **** *** "Rex".

Input : My cat is getting anorexic.

Output : ** *** ** ******* ***rex**.
*/

f(s)=>s.replaceAllMapped(RegExp(r'(rex)|(\w)',caseSensitive:false),(Match m)=>m[1]!=null?m[1]:'*');

check(){
  var t=[
    'Rex lives in Rexland.',
    'To call Rex, just say "Rex".',
    'My cat is getting anorexic.'
  ];

  t.forEach((u){print(f(u));});
}