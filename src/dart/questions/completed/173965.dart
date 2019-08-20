/*
With the given text below, there are some words in the text that repeats several times in the text. Use any programming language to write a short code that compresses the text to display it. Or in other words, use the smallest number of bytes to display the text.
The Text is:

Peter Piper picked a peck of pickled peppers.
A peck of pickled peppers Peter Piper picked.
If Peter Piper picked a peck of pickled peppers,
Where's the peck of pickled peppers Peter Piper picked?

https://codegolf.stackexchange.com/questions/173965/text-compression
*/

f(){var s='Peter Piper picked',t=' peck of pickled peppers';return"$s a$t.\nA$t $s.\nIf $s a$t,\nWhere's the$t $s?";}
g()=>"0 a 1.\nA 0 1.\nIf 0 a 1,\nWhere's the 1 0?".replaceAll('0','Peter Piper picked').replaceAll('1', 'peck of pickled peppers');
h()=>"0 a 1.\nA 0 1.\nIf 0 a 1,\nWhere's the 1 0?".split('0').join('Peter Piper picked').split('1').join('peck of pickled peppers');

bool check() {
  String s = f();
  String e = "Peter Piper picked a peck of pickled peppers.\nA peck of pickled peppers Peter Piper picked.\nIf Peter Piper picked a peck of pickled peppers,\nWhere's the peck of pickled peppers Peter Piper picked?";

  print('$s\n-----\n$e');
  print(s.length.toString() + '/' + e.length.toString());
  return s == e;
}