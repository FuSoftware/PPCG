/*
Write a program that takes a single line string that you can assume will only contain the characters /\_~. (That's forward and backward slash, underline and overline. You can use ~ in place of overline if you need since overline is not convenient ASCII.)

For example, one possible input is:

__/~~\/\_/~
Your program needs to output a truthy or falsy value depending on whether the left edge of the string is "connected", so to speak, to the right edge of the string via the lines of the characters. So, if the kerning was a bit less, there would be a solid black (albeit kinky) line all the way from the left edge to the right, like an unbroken piece of string or twine.

The output for the above example would be true because the edges are connected:

example path

To be clear on the connections:

/ connects on its bottom left and top right
\ connects on its top left and bottom right
_ connects on its bottom left and bottom right
~ (or ~) connects on its top left and top right
Also:

It doesn't matter whether the edges of the string started on the top or the bottom, it only matters that they connect horizontally through the whole length of the string.

You can assume the input string is non-empty, and of course just one line.

Here are some more examples followed by 1 (truthy) if they are connected or 0 (falsy) if not:

__/~~\/\_/~
1

_
1

\
1

/
1

~
1

___
1

\/
1

/\/
1

/\/\
1

~~~
1

\\
0

~~
1

_~
0

~_
0

\_____/
1

\/\\/\\___
0

\/\__/~~\
1

______/\_____
1

~~~~~~\\_____
0

~~~~~~\______
1

_____/~~~~~
1

\___/~~~\___/~~~
1

\_/_\_
0

\_/\_
1

/\/\/\/\/\/\/\/\/\/\/\/
1

____________________
1

~~~~~~~~~~~~~~~~~~~~~~~
1

~~~~~~~~~~~~~~~~~~~~~~~~/
0

~~~~~~~~~~~~~~~~~~~~~~~~\
1

/\~/\~___/|\_|\/__\/\~~
0
The shortest code is the winner.
*/
/*
~/,~_,//,\\,_\,_|_,/|\,\|/
*/

var cases = [
  [r'__/~~\/\_/~',true],
  ['_',true],
  [r'\', true],
  ['/', true],
  ['___', true],
  [r'\/', true],
  [r'/\/',true],
  [r'/\/\',true],
  [r'~~~',true],
  [r'\\',false],
  [r'~~',true],
  [r'_~',false],
  [r'~_',false],
  [r'\_____/',true],
  [r'\/\\/\\___',false],
  [r'\/\__/~~\',true],
  [r'______/\_____',true],
  [r'~~~~~~\\_____',false],
  [r'~~~~~~\______',true],
  [r'_____/~~~~~',true],
  [r'\___/~~~\___/~~~',true],
  [r'\_/_\_',false],
  [r'\_/\_',true],
  [r'/\/\/\/\/\/\/\/\/\/\/\/',true],
  [r'____________________',true],
  [r'~~~~~~~~~~~~~~~~~~~~~~~',true],
  [r'~~~~~~~~~~~~~~~~~~~~~~~~/',false],
  [r'~~~~~~~~~~~~~~~~~~~~~~~~\',true],
  [r'/\~/\~___/|\_|\/__\/\~~',false],
  [r'',true]
];

f(s)=>!(r'//,\\,~/,_\,~_,_~,/_,\~'.split(',').map((t)=>s.contains(t)).fold(false,(p,e)=>p|e));
g(s)=>!(['//','\\','~/','_\\','~_','_~','/_','\\~'].map((t)=>s.contains(t)).fold(false,(p,e)=>p|e));
h(s)=>(r'//,\\,~/,_\,~_,_~,/_,\~'.split(',').map((t)=>s.contains(t)?1:0).fold(0,(p,e)=>p+e))<1;

check(){
  int ok = 0;
  int max = cases.length;
  cases.forEach((c){
    if(h(c[0]) != c[1]) print(c[0]);
    else ok++;
  });

  print('$ok / $max');
}