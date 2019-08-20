/*

down vote
favorite
There is a "sorting algorithm" sometimes called Stalin sort in which in order to sort a list you simply remove elements from the list until it is sorted in increasing order. For example the list

[1, 2, 4, 5, 3, 6, 6]
When "sorted" using Stalin sort becomes

[1, 2, 4, 5, 6, 6]
The three was removed because it was out of order.

Now obviously there are many ways to remove elements to sort a list. For example any list with less than two elements must be sorted so by just removing enough elements blindly we can always sort a list. Since this is the case we only care about the longest possible result from a Stalin sort.

Your task will be to take a list of positive integers and output the length of the longest sorted (increasing) list that can be arrived at by removing elements from the original list. That is find the length of the longest sorted (possibly non-contiguous) sub-list.

Sorted lists can have the same element more than once in a row. You do not need to support the empty list unless your program itself is empty.

Scoring
Your answer will be scored by the length of its own longest possible Stalin sort. Programs will be interpreted as a sequence of bytes rather than characters, and their order will be the natural one that arises by interpreting the bytes as numbers. Lower scores are better.

This is not code-golf
Test cases
[1, 2, 4, 5, 3, 6, 6] -> 6
[19, 2] -> 1
[3, 3, 4, 3] -> 3
[10] -> 1
[1, 2, 4, 9] -> 4
[1, 90, 2, 3, 4, 5] -> 5
[1, 90, 91, 2, 3, 4, 5] -> 5
*/
List<int> f(List<int> values){
  List<int> result = [];
  result.add(values[0]);

  for(var i=1;i<values.length;i++){
    var b = values.getRange(i+1, values.length);
    var d = b.where((c)=>c<=values[i]);
    if(d.isEmpty){
      result.add(values[i]);
    }else{
      if(result.length > values.length/2){
        result.removeLast();
        result.add(values[i]);
      }
    }
  }

  return result;
}

check(){
  var t = [
    [1,2,4,5,3,6,6],
    [19, 2],
    [3,3,4,3],
    [10],
    [1,2,4,9],
    [1,90,2,3,4,5],
    [1,90,91,2,3,4,5]
  ];

  t.forEach((d){
    print("${f(d)} : ${f(d).length}");
  });
}