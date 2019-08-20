/*
A language that is very useful in restricted source and other such challenges is Unary, a brainfuck derivative in which programs are written in with only one character. Your job is to write a program to convert programs from brainfuck to unary and a program to do the opposite, both programs in the same language. Your score will be the sum of the lengths of the two programs.

How do you convert from brainfuck to unary?
First convert you brainfuck code to binary according to this table:
Conversion Table

Now concatenate the code into one giant binary number in order of the code.
Prepend a 1 to the string to ensure a unique binary number.
Convert from a binary number to a unary number using any character.
Ex: +. would be 000000000000000000000000000000000000000000000000000000000000000000000000000000000000 (84 zeroes).
Brainfuck -> Unary Specs
Since the resulting programs will be impossibly huge, print not the actual program but merely the length of the resulting program.
Take the brainfuck program as a string through stdin, function arg, etc and output the length.
The program will always be valid and have only those 8 chars in it.
Unary -> Brainfuck Specs
You will have to implement the reverse of the above algorithm.
Again because of the huge sizes in question, the input will be a number describing the length of the Unary code.
Same I/O rules as always.
The program will always be valid and have only those 8 chars in it.
Test Cases
Hello World - ++++++[>++++++++++++<-]>.>++++++++++[>++++++++++<-]>+.+++++++..+++.>++++[>+++++++++++<-]>.<+++[>----<-]>.<<<<<+++[>+++++<-]>.>>.+++.------.--------.>>+. = 239234107117088762456728667968602154633390994619022073954825877681363348343524058579165785448174718768772358485472231582844556848101441556
Fibonacci - ++++++++++++++++++++++++++++++++++++++++++++>++++++++++++++++++++++++++++++++>++++++++++++++++>>+<<[>>>>++++++++++<<[->+>-[>+>>]>[+[-<+>]>+>>]<<<<<<]>[<+>-]>[-]>>>++++++++++<[->-[>+>>]>[+[-<+>]>+>>]<<<<<]>[-]>>[++++++++++++++++++++++++++++++++++++++++++++++++.[-]]<[++++++++++++++++++++++++++++++++++++++++++++++++.[-]]<<<++++++++++++++++++++++++++++++++++++++++++++++++.[-]<<<<<<<.>.>>[>>+<<-]>[>+<<+>-]>[<+>-]<<<-]<<++... = 13067995222095367150854793937817629722033205198624522624687536186118993888926522550140580142585590431635487113180955099384652678100247403485397450658564826143160529351955621991895221530908461364045400531236124980271740502887704217664044858614821622360156740992393765239123681327824577149595724956207165558106099868913919959549896553103116795519592552089266360725543244154867904980260
This is code-golf so lowest score in bytes wins!

Anyone up for a solution in Unary? ;P
*/

f(s)=>BigInt.parse('1'+s.split('').map('><+-.,[]'.indexOf).join(''),radix:8);
F(n)=>BigInt.parse(n).toRadixString(8).split('').map((s)=>'><+-.,[]'.substring(int.parse(s),int.parse(s)+1)).join('').toString().substring(1);

check(){
  var t=[
    ['++++++[>++++++++++++<-]>.>++++++++++[>++++++++++<-]>+.+++++++..+++.>++++[>+++++++++++<-]>.<+++[>----<-]>.<<<<<+++[>+++++<-]>.>>.+++.------.--------.>>+.','239234107117088762456728667968602154633390994619022073954825877681363348343524058579165785448174718768772358485472231582844556848101441556'],
    ['++++++++++++++++++++++++++++++++++++++++++++>++++++++++++++++++++++++++++++++>++++++++++++++++>>+<<[>>>>++++++++++<<[->+>-[>+>>]>[+[-<+>]>+>>]<<<<<<]>[<+>-]>[-]>>>++++++++++<[->-[>+>>]>[+[-<+>]>+>>]<<<<<]>[-]>>[++++++++++++++++++++++++++++++++++++++++++++++++.[-]]<[++++++++++++++++++++++++++++++++++++++++++++++++.[-]]<<<++++++++++++++++++++++++++++++++++++++++++++++++.[-]<<<<<<<.>.>>[>>+<<-]>[>+<<+>-]>[<+>-]<<<-]<<++...','13067995222095367150854793937817629722033205198624522624687536186118993888926522550140580142585590431635487113180955099384652678100247403485397450658564826143160529351955621991895221530908461364045400531236124980271740502887704217664044858614821622360156740992393765239123681327824577149595724956207165558106099868913919959549896553103116795519592552089266360725543244154867904980260']
  ];

  t.forEach((u){
    print('${f(u[0]).toString() == u[1]}');
    print('${F(u[1]).toString() == u[0]}');
  });
}