/*
Here is a simple ASCII art snowman:

_===_
(.,.)
( : )
( : )
Let's make him some friends. This will be the general pattern for our ASCII art snowpeople:

 HHHHH
 HHHHH
X(LNR)Y
X(TTT)Y
 (BBB)
The leading spaces and the parentheses are always the same for all snowpeople. The different letters represent sections of the pattern that can individually change. Each section has exactly four presets for what ASCII characters can fill it. By mixing and matching these presets for all eight sections, we can make a variety of snowpeople.

All Presets
(Notice that spaces are put on otherwise empty lines so the section shape is always correct.)

H is for Hat
Straw Hat

     
_===_
Mexican Hat

 ___ 
.....
Fez

  _  
 /_\ 
Russian Hat

 ___ 
(_*_)
N is for Nose/Mouth
Normal ,

Dot .

Line _

None 

L is for Left Eye
Dot .

Bigger Dot o

Biggest Dot O

Closed -

R is for Right Eye
(Same list as left eye.)

X is for Left Arm
Normal Arm

 
<
Upwards Arm

\
 
Downwards Arm

 
/
None

 
 
Y is for Right Arm
Normal Arm

 
>
Upwards Arm

/
 
Downwards Arm

 
\
None


 
T is for Torso  ' : ','] [','> <','  '
Buttons  : 

Vest ] [

Inward Arms > <

None    

B is for Base [' : ','" "','___','   ']
Buttons  : 

Feet " "

Flat ___

None    

Challenge
Write a program that takes in an eight character string (via stdin or command line) in the format HNLRXYTB, where each letter is a digit from 1 to 4 that denotes which preset to use for the corresponding section of the snowperson. Print the full snowperson to stdout.

For example, the input 11114411 is the snowman at the top of the page. (First 1: he has a straw hat, second 1: he has a normal nose, etc.)

Another example, the snowperson for input 33232124:

   _
  /_\
\(o_O)
 (] [)>
 (   )
Details
Any amounts and combinations of leading/trailing spaces and leading/trailing newlines are allowed as long as...

the snowperson has all their sections arranged correctly with respect to one another, and
there are never more than 64 total whitespace characters (the general pattern is only 7×5, so you probably won't hit this limit).
You don't need to print rows/columns of the pattern if they only contain whitespace. e.g. the empty line of the straw hat is not required.

You must use the ordering of the parts as they are given above.

Instead of a program, you may write a function that takes the digit string as an argument. The output should be printed normally or returned as a string.

You may treat the input as an integer instead of a string if preferred.
Scoring
The shortest code in bytes wins.

Bonus question: Which of the 65536 distinct snowpeople is your favorite?

33232124
   _
  /_\
\(o_O)
 (] [)>
 (   )

12222212
 _===_
\(o.o)/
 ( : ) 
 (" ")

32443333 
   _
  /_\
 (-.-) 
/(> <)\
 (___)

44444432
  ___    
 (_*_)
 (- -)
 (> <)
 (" ")

11114411
_===_
(.,.)
( : )
( : )
*/

//HNLRXYTB
//02341567
//01234567
//XXXX

f(i,{r='.o0-',s=' : '}){i=i.split('').map((j)=>int.parse(j)-1).toList();return' ${['_===_',' ___ \n.....',' /_\\ ',' ___ \n (_*_)'][i[0]]}\n${' \\  '[i[4]]}(${r[i[2]]+',._ '[i[1]]+r[i[3]]})${' /  '[i[5]]}\n${'< /  '[i[4]]}(${[s,'] [','> <','  '][i[6]]})${'> \\ '[i[5]]}\n (${[s,'" "','___','   '][i[7]]})';}

void check(){
  print(f("33232124")+'\n');
  print(f("12222212")+'\n');
  print(f("32443333")+'\n');
  print(f("44444432")+'\n');
}