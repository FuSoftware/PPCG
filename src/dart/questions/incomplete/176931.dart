/*
Introduction:
I have loads of different ciphers stored in a document I once compiled as a kid, I picked a few of the ones I thought were best suitable for challenges (not too trivial, and not too hard) and transformed them into challenges. Most of them are still in the sandbox, and I'm not sure yet whether I'll post all of them, or only a few. But here is the first of them to start things of.

A Computer Cipher will encipher the given text into 'random' character groups of a given length. If such a group contains a digit, it will use that digit to index into its own group for the enciphered character. If no digit is present in the group, it means the first character is used.

For example, let's say we want to encipher the text this is a computer cipher with a given length of 5. This is a potential output (note: numbers are 1-indexed in the example below):

t     h     i     s     i     s     a     c     o     m     p     u     t     e     r     c     i     p     h     e     r       (without spaces of course, but added as clarification)
qu5dt hprit k3iqb osyw2 jii2o m5uzs akiwb hwpc4 eoo3j muxer z4lpc 4lsuw 2tsmp eirkr r3rsi b5nvc vid2o dmh5p hrptj oeh2l 4ngrv   (without spaces of course, but added as clarification)
Let's take a few groups as examples to explain how to decipher the group:

qu5dt: This group contains a digit 5, so the (1-indexed) 5th character of this group is the character used for the deciphered text: t.
hprit: This group contains no digits, so the first character of this group is used implicitly for the deciphered text: h.
osyw2: This groups contains a digit 2, so the (1-indexed) 2nd character of this group is the character used for the deciphered text: s.
Challenge:
Given an integer length and string word_to_encipher, output a random enciphered string as described above.

You only have to encipher given the length and word_to_encipher, so no need to create a deciphering program/function as well. I might make a part 2 challenge for the deciphering in the future however.

Challenge rules:
You can assume the length will be in the range [3,9].
You can assume the word_to_encipher will only contain letters.
You can use either full lowercase or full uppercase (please state which one you've used in your answer).
Your outputs, every group, and the positions of the digits in a group (if present) should be uniformly random. So all random letters of the alphabet have the same chance of occurring; the position of the enciphered letter in each group has the same chance of occurring; and the position of the digit has the same chance of occurring (except when it's the first character and no digit is present; and it obviously cannot be on the same position as the enciphered character).
You are also allowed to use 0-indexed digits instead of 1-indexed. Please state which of the two you've used in your answer.
The digit 1 (or 0 when 0-indexed) will never be present in the output. So b1ndh is not a valid group to encipher the character 'b'. However, b4tbw is valid, where the 4 enciphers the b at the 4th (1-indexed) position, and the other characters b,t,w are random (which coincidentally also contains a b). Other possible valid groups of length 5 to encipher the character 'b' are: abcd2, ab2de, babbk, hue5b, etc.
General rules:
This is code-golf, so shortest answer in bytes wins.
Don't let code-golf languages discourage you from posting answers with non-codegolfing languages. Try to come up with an as short as possible answer for 'any' programming language.
Standard rules apply for your answer with default I/O rules, so you are allowed to use STDIN/STDOUT, functions/method with the proper parameters and return-type, full programs. Your call.
Default Loopholes are forbidden.
If possible, please add a link with a test for your code (i.e. TIO).
Also, adding an explanation for your answer is highly recommended.
Test cases:
Input:
 Length:           5
 Word to encipher: thisisacomputercipher
Possible output:
 qu5dthpritk3iqbosyw2jii2om5uzsakiwbhwpc4eoo3jmuxerz4lpc4lsuw2tsmpeirkrr3rsib5nvcvid2odmh5phrptjoeh2l4ngrv

Input:
 Length:           8
 Word to encipher: test
Possible output:
 ewetng4o6smptebyo6ontsrbtxten3qk

Input:
 Length:           3
 Word to encipher: three
Possible output:
 tomv3h2rvege3le
*/
import'dart:math';
String f(int a,String mote_de_passe, {Random d,lettre,index_lettre,i,j,index_nombre,offset,String resultat=''}){
  d=Random();
  for(j=0;j<mote_de_passe.length;j++){
    offset=j*a+j;
    lettre=mote_de_passe[j];
    index_lettre=d.nextInt(a);
    for(i=0;i++<a;){
      resultat+=i==index_lettre?lettre:String.fromCharCode(d.nextInt(25)+97);
    }
    do index_nombre=d.nextInt(a); while(index_nombre==index_lettre);
    if(index_lettre++>1)resultat=resultat.replaceRange(offset+index_nombre,offset+index_nombre,'$index_lettre');
    print('$offset $index_nombre ${offset+index_nombre} ${offset+index_lettre} = ($lettre à $index_lettre) : ${resultat[offset+index_lettre]}');
  }
  return resultat;
}

check(){
  print(f(8,'test'));
  //print(f(3,'three'));
  //print(f(5,'thisisacomputercipher'));
}