/*
Everyone knows that cats go meow, but what many don't realise is that caaaats go meeeeoooow. In fact, the length of the vowel sounds that the cat makes are dependant on the length of the vowel with which you address it.

In the same way, cows go moo, but coooows go moooooooo

Challenge
You are to write a program that takes as input, a word meaning cat, and a word meaning cow, determine the number of main vowels, and print one of the following strings, as appropriate:

C[]ts go M[]w
C[]ws go M[]
Where [] stands for the vowels, according to the following rules:

The number of e's and o's in "Meow" must both match the number of vowels found in the input word.
The number of o's in "Moo" must be double the number of vowels found in the input word.
The program must recognise the input words cat and cow. Input may use any capitalisation that is most convenient, but the output must be capitalised exactly as shown above.
*/
f(s){var u=s.length-2,v=s.contains('t');return s+'s go M'.padRight(6+u,v?'e':'o').padRight(6+2*u,'o')+(v?'w':'');}
g(s){var u=s.length+1,v=s.contains('t');return s+'s go M'.padRight(3+u,v?'e':'o').padRight(2*u,'o')+(v?'w':'');}
j(s){var u=s.length+1,v=s.contains('t');return s+'s go M'.padRight(v?3+u:0,'e').padRight(2*u,'o')+(v?'w':'');}
k(s){var u=s.length+1,v=s[1]=='a';return s+'s go M'.padRight(v?3+u:0,'e').padRight(2*u,'o')+(v?'w':'');}
l(s)=>s+'s go M'.padRight(s[1]=='a'?s.length+4:0,'e').padRight(2*(s.length+1),'o')+(s[1]=='a'?'w':'');
m(s)=>s+'s go M'.padRight(s[1]=='a'?s.length+4:0,'e').padRight(2*s.length+2,'o')+(s[1]=='a'?'w':'');

h(s)=>s+'s go M'.padRight(s.length+4,s.contains('t')?'e':'o').padRight(2*(s.length+1),'o')+(s.contains('t')?'w':'');
i(s)=>s+'s go M'.padRight(s.contains('t')?s.length+4:0,'e').padRight(2*(s.length+1),'o')+(s.contains('t')?'w':'');

check(){
  print(m('Cat'));
  print(m('Caaaaat'));
  print(m('Caaat'));
  print(m('Cow'));
  print(m('Cooow'));
}