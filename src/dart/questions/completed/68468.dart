/*
Given an input of a "hotel" in ASCII art with a single room marked, output the room number according to certain rules.

Here's an example of an ASCII hotel:

               ##
               ##
#####          ##
#####  ######  ##
#####  ######  ##
#####  ######  ##
Here are a few more things about the ASCII hotels:

Each "building" is represented by a rectangle of # characters, where each # represents a "room".

The above hotel consists of three buildings. Each building is separated by two columns of spaces, and the lowest "floor" will always be on the last line.

Each building will always have anywhere from 1-9 "floors" (rows) and 1-9 "rooms" on each floor. There will also always be 1-9 buildings.

Rooms are numbered as follows: [building #][floor #][room on floor #]. For example, let's mark a few rooms in the above drawing:

               ##
               ##
#####          ##
#####  ####$#  ##
##%##  ######  ##
#####  ######  #@
The room marked with the % is room 123 (building 1, floor 2, 3rd room on floor). Similarly, the room marked with the $ is room 235, and the @ is room 312.

Buildings, floors, and "nth room on floor"s are always 1-indexed.

The input will consist of an ASCII hotel with a single room replaced with an asterisk (*). This is the room for which you must output the room number. The input must be taken as a single string, but you may use commas as line separators instead of newlines (in case your language of choice cannot take multiline input or if it's shorter to take single-line input). You may optionally require a trailing comma/newline. You may also pad lines with trailing spaces to make the input a complete rectangle.

Since this is code-golf, the shortest code in bytes wins.

Test cases (contained within a single code block to conserve vertical space):

Input:
*

Output: 111

Input:
#  #  *  #  #

Output: 311

Input:
#####
#####
####*
#####
#####

Output: 135

Input:
         #####
         #####           ######
         #####           ######
#  #  #  #####  #  #  #  ######  *

Output: 911

Input:
#
#  #
#  #  ##
#  #  ##  ###
#  #  ##  ###  #####
#  #  ##  ###  ##*##  ########
#  #  ##  ###  #####  ########

Output: 523

Input:
           #
           *
           #
           #
           #
           #
           #
           #
#########  #  #

Output: 281

Input:
                        ########*
                        #########
                        #########
                        #########
                        #########
                        #########
                        #########
                        #########
#  #  #  #  #  #  #  #  #########

Output: 999
*/

var t2 = """#####
#####
####*
#####
#####""";

var t3="""         #####
         #####           ######
         #####           ######
#  #  #  #####  #  #  #  ######  *""";

var t4="""#
#  #
#  #  ##
#  #  ##  ###
#  #  ##  ###  #####
#  #  ##  ###  ##*##  ########
#  #  ##  ###  #####  ########""";

var t5="""           #
           *
           #
           #
           #
           #
           #
           #
#########  #  #""";

var t6="""                        ########*
                        #########
                        #########
                        #########
                        #########
                        #########
                        #########
                        #########
#  #  #  #  #  #  #  #  #########""";


//v=Floor
//w=Building
//x=Room

F(List s)=>s.indexWhere((a)=>a.contains('*'));f(String s){var b=s.split('\n'),v=F(b),c=b[v].split('  '),w=F(c),x=c[w].indexOf('*')+1;return '${w+1}${b.length-v}$x';}

g(String s){var d="*",b=s.split('\n'),v=b.indexWhere((a)=>a.contains(d)),c=b[v].split('  '),w=c.indexWhere((a)=>a.contains(d)),x=c[w].indexOf(d)+1;return '${w+1}${b.length-v}$x';}

check(){
  print('${f("*")} -> 111');
  print('${f("#  #  *  #  #")} -> 311');
  print('${f(t2)} -> 135');
  print('${f(t3)} -> 911');
  print('${f(t4)} -> 523');
  print('${f(t5)} -> 281');
  print('${f(t6)} -> 999');
}