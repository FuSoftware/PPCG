/*
While I was writing numbers I noticed after a while that my keyboard had the Shift key pressed and blocked and all I wrote was $%&-like characters. And even worse, I had been switching between the English and Spanish keyboard layouts so I don't know which one I used for each number.

Challenge
Given a string containing symbol characters, try to guess which number I wrote. My keyboard produces the following characters for the numbers when the Shift is pressed:

1234567890
----------
!"·$%&/()=  Spanish layout
!@#$%^&*()  English layout
The input will be a non-null, non-empty string composed of the symbols above.
The output will be a single number if the keyboard layout can be inferred from the string (i.e. if the string contains a @ an English layout was used, and if the string contains a " a Spanish layout was used) or if the number is the same for both layouts (i.e. the input is !$ which translates as 14 for both layouts); otherwise the output will be the two possible numbers for both layouts if it cannot be inferred and the resulting numbers are different.
The input string will always be written in a single layout. So you don't need to expect "@ as input.
Examples
Input  -->  Output
------------------
/()         789        (Spanish layout detected by the use of /)
$%&         456,457    (Layout cannot be inferred)
!@#         123        (English layout detected by the use of @ and #)
()&!        8961,9071  (Layout cannot be inferred)
((·))       88399      (Spanish layout detected by the use of ·)
!$          14         (Layout cannot be inferred but the result is the same for both)
!!$$%%      114455     (Layout cannot be inferred but the result is the same for both)
==$"        0042/42    (Spanish layout, if a number starts with 0 you can choose to
                       omit them in the result or not)

Single character translations:
------------------------------
!   1    
"   2
·   3
$   4
%   5
&   6,7
/   7
(   8,9
)   9,0
=   0
@   2
#   3
^   6
*   8
*/

f(s)=>['=!"·\$%&/()',')!@#\$%^&*('].map((b)=>s.split('').map((e)=>b.indexOf(e)).join()).where((e)=>!e.contains('-')).toSet();
g(s){['=!"·\$%&/()',')!@#\$%^&*('].map((b)=>s.split('').map(b.indexOf).join()).where((e)=>!e.contains('-')).toSet();}

void check(){
  var t = [
    [f('/()'), Set.from([789])],
    [f('\$%&'),[456,457]],
    [f('!@#'),[123]],
    [f('()&!'),[8961,9071]],
    [f('((·))'),[88399]],
    [f('!\$'),[14]],
    [f('!!\$\$%%'),[114455]],
    [f('==\$"'),[42]]
  ];

  var u = [
    f('/()'),
    f('\$%&'),
    f('!@#'),
    f('()&!'),
    f('((·))'),
    f('!\$'),
    f('!!\$\$%%'),
    f('==\$"'),
  ];
  print(u);
}