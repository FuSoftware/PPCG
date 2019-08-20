/*
Given an array of integers a which contains n integers, and a single integer x; remove the fewest amount of elements from a to make the sum of a equal to x. If no combinations of a can form x, return a falsy value.

As pointed out in a comment this is the maximum set with a sum of x, excuse my lesser math brain. I forgot a lot of terms since college.

Examples (Truthy):

f([1,2,3,4,5,6,7,8,9,10], 10) = [1,2,3,4]

f([2,2,2,2,2,2,2,2,2], 10) = [2,2,2,2,2]

f([2,2,2,2,-2,-2,-2,-4,-2], -8) = [2,2,-2,-2,-2,-4,-2]

f([-2,-4,-2], -6) = [-4,-2] OR [-2,-4]

f([2,2,2,4,2,-2,-2,-2,-4,-2], 0) = [2,2,2,4,2,-2,-2,-2,-4,-2] (Unchanged)

f([], 0) = [] (Unchanged Zero-sum Case)

Examples (Falsy, any consistent non-array value):

Impossible to Make Case: f([-2,4,6,-8], 3) = falsy (E.G. -1)

Zero Sum Case: f([], non-zero number) = falsy (E.G. -1)

Note: any value like [-1] cannot be valid for falsy, as it is a potential truthy output.
Rules:

Input may be taken in array form, or as a list of arguments, the last or first being x.
Output may be any delimited list of integers. E.G. 1\n2\n3\n or [1,2,3].
Any value can be used as a falsy indicator, other than an array of integers.
Your code must maximize the size of the end array, order does not matter.
E.G. For f([3,2,3],5) both [2,3] and [3,2] are equally valid.
E.G. For f([1,1,2],2) you can only return [1,1] as [2] is shorter.
Both the sum of a and the value of x will be less than 2^32-1 and greater than -2^32-1.
This is code-golf, lowest byte-count wins.
If there are multiple subarrays of the same size that are valid, it is not acceptable to output all of them. You must choose a single one and output that one.
*/

f(List l, int i) {
  l.sort();
  List results = [];
  l.forEach((f){
    
  });
}

check(){
  print(f([3,2,3],5));
  print(f([1,1,2],2));
  print(f([1,2,3,4,5,6,7,8,9,10], 10));
  print(f([2,2,2,2,2,2,2,2,2], 10));
  print(f([2,2,2,2,-2,-2,-2,-4,-2],0));
  print(f([-2,-4,-2], -6));
  print(f([2,2,2,4,2,-2,-2,-2,-4,-2], 0));
  print(f([-2,4,6,-8], 3));//Falsy
}