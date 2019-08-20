/*
Former US Secretary of Defense, Donald Rumsfeld, famously popularized the phrase "known knowns." Here we're going to distill his remarks into a four-line stanza.

Specifically, output this text:

known knowns
known unknowns
unknown knowns
unknown unknowns
Capitalization doesn't matter (for example, Known unKnowns is fine), and a single trailing newline is acceptable, but no other formatting changes are allowed. That means a single space between the words, and either LF (59 bytes) or CR/LF (62 bytes) between the lines.

Rules
Either a full program or a function are acceptable. If a function, you can return the output rather than printing it.
Standard loopholes are forbidden.
This is code-golf so all usual golfing rules apply, and the shortest code (in bytes) wins.
*/

//75
f({s='known',t='s'})=>"""
$s $s$t
$s un$s$t
un$s $s$t
un$s un$s$t
""";

g({s='known'})=>"$s $s\s\n$s un$s\s\nun$s $s\s\nun$s un$s\s"; //61
h()=>'a as\na unas\nuna as\nuna unas'.replaceAll('a','known'); //62

check(){
  print(g());
}