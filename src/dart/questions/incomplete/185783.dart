/*
Given a string, you've to split it into groups of three characters (by padding _ at the end).

Related, but still it's different.

Sample I/O:

'abcde' -> 'abc', 'de_'

'1234' -> '123', '4__'

'' -> [] or falsey value

'Three spree!' -> 'Thr', 'ee ', 'spr', 'ee!'

6 MB string

This is a code-golf, so fewest bytes will win!

Edit: Finally, output is unrestricted.
*/

f(String s)=>s.split(RegExp('.{3}'));

check(){
  var t = ['abcde','1234','','Three spree!'];
  t.forEach((s){
    print(f(s));
  });
}