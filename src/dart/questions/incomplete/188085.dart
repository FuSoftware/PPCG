/*
Task
Given an input string of 7-bit ASCII characters, do the following:

Convert each character into its 7-bit ASCII code
Concatenate all bits (this results in 7*n bits where n is the number of characters)
For each bit in this bitstream, print 1 if it is different from the previous bit, and print 0 otherwise. The first output bit is always 1.
Example
Input:

Hi
Output:

11011001011101
Explanation:

The string "Hi" has the ASCII codes

72 105

which in bits are:

1001000 1101001

And the transition bits indicators:

11011001011101

This is code golf. Lowest byte count wins.

Test Cases
Test case 1:

Hello World!
110110010101110011010101101010110001110000111110000110000001011101101010101100110001
Test case 2:

%% COMMENT %%
1110111111011111100001100010010100001010110101011010011101010011111110011000001101111110111
*/
f(String s)=>'1'+s.runes.map((r)=>r.toRadixString(2).padLeft(7,'0')).join().split('').toList().reversed.reduce((p,e)=>p.substring(0,p.length-1)+(p[p.length-1]==e?'0':'1')+e).split('').reversed.join().substring(1);
g(s,{t,i}){t=s.runes.map((r)=>r.toRadixString(2).padLeft(7,'0')).join().split('').toList();for(i=t.length-1;i>0;i--)t[i]=t[i]==t[i-1]?'0':'1';t[0]='1'; return t.join();}

check(){
  print(g('Hi'));
  print(g('Hi') == '11011001011101');
  print(g('Hello World!') == '110110010101110011010101101010110001110000111110000110000001011101101010101100110001');
  print(g('%% COMMENT %%') == '1110111111011111100001100010010100001010110101011010011101010011111110011000001101111110111');
}