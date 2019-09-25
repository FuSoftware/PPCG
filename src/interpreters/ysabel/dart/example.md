# YSABEL

- [YSABEL](#ysabel)
  - [General Concepts](#general-concepts)
    - [Functions](#functions)
      - [Multiple computed parameters](#multiple-computed-parameters)
    - [Stacks](#stacks)
      - [General Information](#general-information)
      - [Call a specific item](#call-a-specific-item)
      - [Implicit call to the input stack](#implicit-call-to-the-input-stack)
  - [Code Structure](#code-structure)
    - [Conditonals](#conditonals)
      - [If/Else](#ifelse)
      - [Ternary Assignation](#ternary-assignation)
    - [Loops](#loops)
      - [For Loops](#for-loops)
        - [Example](#example)
  - [Parsing](#parsing)
  - [Code Example](#code-example)
    - [FizzBuzz](#fizzbuzz)
    - [Credit Card Checker](#credit-card-checker)

## General Concepts

This is a function/accumulator/stack based language.
Code is executed through nested and consecutive functions, taking a fixed number of parameters.

### Functions

Functions, are delimited by a semicolon.
For example `` shows 2 functions separated by a semicolon.
Between semicolons, functions follow a nesting pattern. The parser will look for the functions's parameters and build the nesting hierarchy, from the deepest level to the highest.

`R2Od10%0=`

```cs
R(I) : reverse implicit Input
O(R(I), 2) : Factor odd indexes by 2
d(O(R(I), 2)) : Sum digits
%(d(O(R(I), 2), 10) : Modulo 10
=(%(d(O(R(I), 2), 10), 0) : Equals 0
```

#### Multiple computed parameters

Sometimes you may need to compute multiple values to pass to a single function.

For that purpose, you can use the `,` separator or `(...)` to indicate that the next function is on the same level as the previous one.

`R,lO,(@2@2lE).`

```cs
.( //Concatenate
    O( //Odd Index factor
        R(I), //Reversed input
        l(I) //Length of input
    ),
    E( //Even Index factor
        I2, //Second Input
        l(I2) //Length of second input
    )
)
```

### Stacks

#### General Information

The interpreter contains multiple stacks.

`@F` : The **F**unction accumulator. Stores the last computed value from the function hierarchy

`@I` : The **I**nput stack. Stores the input list.

`@P` : The **P**arameter Stack. Stores the parameters to pass to the next function.

#### Call a specific item

Stack items can be called with the appropriate number. For example :

`@I5` : Retrieves the 5th Input

`@A10` : Retrieves the 10th value in accumulator A

#### Implicit call to the input stack

You can also implicitly get any parameter from the Input stack by calling its position

`@15` : Retrieves the 15th input

## Code Structure

### Conditonals

Conditionals depend on the Z accumulator's value.

#### If/Else

These conditionals are made of 3 parts :

- Value to check against
- Code to execute if true
- Code to execute if false

Example :

`R2{l5=;O;E}`

```dart
F = reverse(I);
P.add(2)
if(length(I) == 5){
    oddFactor(P);
}else{
    evenFactor(P);
}
```

#### Ternary Assignation

### Loops

#### For Loops

For loops use 3 variables :

`@L` : Temporary For Loop variable

##### Example

`9[0;2<;1+;L+]`

```dart
F = 9; //Implicit F
for(var L=0;L<2;L+=1) F = F + L; //Implicit F
```

```dart
[
    0; //initial value
    2<; //Loop while this is true
    1+; //Apply this to the L register
    L+; //Execute code like any normal function
]
```

## Parsing

## Code Example

### FizzBuzz

`1I[@B''@A3%?@B"Fizz".`
`[1,I,@B''@B.A%3?"Fizz";@B.A%5?"Buzz";@B.B=""?A;P`
Transpiles to :

```dart
main(int I){
    for(int A=1;A<I;A++)
        B='';
        if(A%3==0) B+='Fizz';
        if(A%5==0) B+='Buzz';
        if(B=='') B+=A;
        print(B);
    }
}
```

### Credit Card Checker

`R2Od10%0=`

```dart
main(int n){
    return sumDigits(
        factorOddIndexes(
            reverse(n),
            2
        )
    ) % 10 == 0;
}
```
