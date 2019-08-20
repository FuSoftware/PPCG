/*
Background
Densely packed decimal (DPD) is a way to efficiently store decimal digits in binary. It stores three decimal digits (000 to 999) in 10 bits, which is much more efficient than naive BCD (which stores one digit in 4 bits).

Notations
The lowercase alphabets a to i are the bits that are copied to the decimal representation.
0 and 1 are the exact bits in the input or output bit patterns.
x bits are ignored in the conversion.
Conversion table
The following is the conversion table from 10 bits of DPD to three decimal digits. Each decimal digit is represented as 4-bit binary (BCD). Both sides are written left to right from the most significant digit to the least.

Bits                 =>  Decimal         (Digit range)
a b c d e f 0 g h i  =>  0abc 0def 0ghi  (0-7) (0-7) (0-7)
a b c d e f 1 0 0 i  =>  0abc 0def 100i  (0–7) (0–7) (8–9)
a b c g h f 1 0 1 i  =>  0abc 100f 0ghi  (0–7) (8–9) (0–7)
g h c d e f 1 1 0 i  =>  100c 0def 0ghi  (8–9) (0–7) (0–7)
g h c 0 0 f 1 1 1 i  =>  100c 100f 0ghi  (8–9) (8–9) (0–7)
d e c 0 1 f 1 1 1 i  =>  100c 0def 100i  (8–9) (0–7) (8–9)
a b c 1 0 f 1 1 1 i  =>  0abc 100f 100i  (0–7) (8–9) (8–9)
x x c 1 1 f 1 1 1 i  =>  100c 100f 100i  (8–9) (8–9) (8–9)
Task
Convert 10 bits of DPD to 3 digits of decimal.

Test cases
DPD           Decimal
0000000101    005
0001100011    063
0001111001    079
0000011010    090
0001011110    098
1010111010    592
0011001101    941
1100111111    879
1110001110    986
0011111111    999
1111111111    999  * Output is same regardless of the `x` bits
Input
The default input format is a list of 10 bits. The bits should follow the exact order above, or the reverse of it. You may choose to use an equivalent string or integer representation instead. Unlike my other challenges, reordering or using nested structures is not allowed.

For the input [1, 1, 0, 0, 0, 1, 0, 1, 0, 0], the following formats are allowed:

List of bits: [1, 1, 0, 0, 0, 1, 0, 1, 0, 0]
String: "1100010100"
Binary integer: 788 or 0b1100010100
Decimal integer: 1100010100
Reversed: [0, 0, 1, 0, 1, 0, 0, 0, 1, 1] and reversed in any other formats above
The following formats are NOT allowed:

Arbitrary reordering of bits: [0, 0, 0, 0, 0, 1, 1, 1, 0, 1]
Nested structures: [[1, 1, 0], [0, 0, 1], [0, 1, 0, 0]] or [0b110, 0b001, 0b0100]
Output
The default output format is a list of 3 decimal digits. Each digit should be represented as 0 to 9, either an integer or a character. As in input, you can choose string or integer representation. If you choose integer representation, leading zeroes can be omitted.
*/

f(a,b,c,d,e,f,g,h,i){

}

F(a,b,c)=>a<<2+b<<1+c;

check(){
  var t = [
    ['0000000101',    5],
    ['0001100011',    63],
    ['0001111001',    79],
    ['0000011010',    90],
    ['0001011110',    98],
    ['1010111010',    592],
    ['0011001101',    941],
    ['1100111111',    879],
    ['1110001110',    986],
    ['0011111111',    999]
  ];

  t.forEach((u)=>{
    
  });
}