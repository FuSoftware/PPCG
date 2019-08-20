//https://codegolf.stackexchange.com/questions/147469/alphabet-staircase
f(){List.generate(26,(i)=>''.padRight(i+1,String.fromCharCode(i+97))).forEach(print);}
g(){'abcdefghijklmnopqrstuvwxyz'.split('').map((c)=>c.padRight(c.runes.first-96,c)).forEach(print);}
h(){'abcdefghijklmnopqrstuvwxyz'.runes.map((c)=>String.fromCharCodes(List.filled(c-96, c))).forEach(print);}

check(){
  h();
}