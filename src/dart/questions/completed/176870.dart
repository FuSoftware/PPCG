/*
(Note: This is my first ever code golf question, but as far as I can tell, nobody else has done exactly this, so I should be good.)

Your task is to make a program or function that takes in a string s and an integer n, and returns or outputs that text wrapped into multiple lines. Each word must be wholly on a line; i.e. no words split in the middle. Each line can be no longer than n characters long, and you must fit as many words as possible on each line.

Example:

s = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget erat lectus. Morbi mi mi, fringilla sed suscipit ullamcorper, tristique at mauris. Morbi non commodo nibh. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed at iaculis mauris. Praesent a sem augue. Nulla lectus sapien, auctor nec pharetra eu, tincidunt ac diam. Sed ligula arcu, aliquam quis velit aliquam, dictum varius erat." 
n = 50

output:
Lorem ipsum dolor sit amet, consectetur adipiscing
elit. Sed eget erat lectus. Morbi mi mi, fringilla
sed suscipit ullamcorper, tristique at mauris.
Morbi non commodo nibh. Pellentesque habitant
morbi tristique senectus et netus et malesuada
fames ac turpis egestas. Sed at iaculis mauris.
Praesent a sem augue. Nulla lectus sapien, auctor
nec pharetra eu, tincidunt ac diam. Sed ligula
arcu, aliquam quis velit aliquam, dictum varius
erat.
Your output can be an array of strings or a single string with line breaks. Also, you can assume no words will be longer than n, so don't worry about dealing with weird cases.

Standard I/O rules apply, and standard loopholes are prohibited. Trailing spaces are allowed.

Since this is code-golf, the shortes solution in bytes wins.

Here is an example program in Python that would work.
*/

g(s,n,{l}){l=[''];s.split(' ').forEach((w){if((l.last+w).length<=n)l.last+=w+' ';else l.add(w+' ');});return l;}
f(s,n,{l}){l=[''];s.split(' ').forEach((w){if((l.last+w).length<=n)l.last+='$w ';else l.add('$w ');});return l;}

check(){
  var t = [
    ['Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget erat lectus. Morbi mi mi, fringilla sed suscipit ullamcorper, tristique at mauris. Morbi non commodo nibh. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed at iaculis mauris. Praesent a sem augue. Nulla lectus sapien, auctor nec pharetra eu, tincidunt ac diam. Sed ligula arcu, aliquam quis velit aliquam, dictum varius erat.',50]
  ];

  t.forEach((u){
    f(u[0],u[1]).forEach(print);
  });
}