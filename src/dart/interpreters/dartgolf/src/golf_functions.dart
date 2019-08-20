import 'functions.dart' as fun;

List<dynamic> stack = List<dynamic>();

pop(){
  if(stack.length > 0) return stack.removeLast();
  else return 0;
}

push(v){
  stack.add(v);
}

void initStack(List<dynamic> stack_in, List<dynamic> args){
  stack = stack_in.reversed.toList();
  args.reversed.forEach(push);
}

Map<String, Function> instructions = {
  '+': (){
    var a = pop();
    var b = pop();

    if(a is List)push(a.map((c)=>fun.add(c,b)));
    else push(fun.add(a, b));
  },

  '-': (){
    var a = pop();
    var b = pop();

    if(a is List)push(a.map((c)=>fun.sub(c,b)));
    else push(fun.sub(a, b));
  },

  '/': (){
    var a = pop();
    var b = pop();
    if(a is List)push(a.map((c)=>fun.div(c,b)));
    else push(fun.div(a, b));
  },

  '*': (){
    var a = pop();
    var b = pop();
    if(a is List)push(fun.intParse(a).map((c)=>fun.mult(c,b)));
    else push(fun.mult(a, b));
  },

  '%': (){
    var a = pop();
    var b = pop();
    if(a is List)push(a.map((c)=>fun.mod(c,b)));
    else push(fun.mod(a, b));
  },

  'a': (){ //Range

  },

  'b': (){ //Binary Representation
    var a = pop();

    if(a is List<String>) push(fun.intParse(a).map(fun.binary).toList());
    if(a is List<int>) push(a.map(fun.binary).toList());
    if(a is int) push(fun.binary(a));
  },

  'c': (){
    
  },

  'd': (){ //Duplicate
    var a = pop();

    if(a is List){
      List<dynamic> b = List<dynamic>();
      a.forEach((c){b.add(c);b.add(c);});
      push(b);
    }else{
      push('$a$a');
    }
  },

  'e': (){ //Factor even numbers
    var a = pop();
    var b = pop();

    if(!(a is List)) a = fun.split(a, '');
    push(fun.even_factor(fun.intParse(a), b));
  },

  'f': (){
    
  },

  'g': (){
    
  },

  'h': (){
    
  },

  'i': (){
    
  },

  'j': (){ //Join
    List l = pop();
    String del = pop();
    push(fun.join(l, del));
  },

  'k': (){
    
  },

  'l': (){
    
  },

  'm': (){
    
  },

  'n': (){
    
  },

  'o': (){ //Factor odd numbers
    var a = pop();
    var b = pop();

    if(!(a is List)) a = fun.split(a, '');
    push(fun.odd_factor(fun.intParse(a), b));
  },

  'p': (){
    
  },

  'q': (){
    
  },

  'r': (){ //Reverse
    stack.last = stack.last.reversed.toList();
  },

  's': (){ //Split
    var a = pop();
    var b = pop();

    if(b is int) push(fun.splitNum(a, b));
    if(b is String) push(fun.split(a, b));
  },

  't': (){
    
  },

  'u': (){
    
  },

  'v': (){
    
  },

  'w': (){
    
  },

  'x': (){
    
  },

  'y': (){
    
  },

  'z': (){
    
  },

  'A': (){
    
  },

  'B': (){
    
  },

  'C': (){
    
  },

  'D': (){ //Sum Digits
    var a = pop();
    if(a is List) push(a.map(fun.sumDigits).toList());
    else if(a is int) push(fun.sumDigits(a));
  },

  'E': (){
    
  },

  'F': (){
    
  },

  'G': (){
    
  },

  'H': (){
    
  },

  'I': (){
    
  },

  'J': (){
    
  },

  'K': (){
    
  },

  'L': (){
    
  },

  'M': (){
    
  },

  'N': (){
    
  },

  'O': (){
    
  },

  'P': (){
    
  },

  'Q': (){
    
  },

  'R': (){ //Reverse Stack
    stack = stack.reversed.toList();
  },

  'S': (){ //Sum
    var a = pop();
    if(a is List) push(fun.sumList(fun.intParse(a)));
    if(a is String) push(fun.sumList(fun.intParse(fun.split(a, ''))));
    if(a is int) push(fun.sumDigits(a));
  },

  'T': (){
    
  },

  'U': (){
    
  },

  'V': (){
    
  },

  'W': (){
    
  },

  'X': (){
    
  },

  'Y': (){
    
  },

  'Z': (){
    
  },

  '£': (){ //Sum Digits
    var a = pop();
    if(a is int) push(fun.sumDigits(a));
    if(a is List) push(a.map(fun.sumDigits).toList());
  },

  'µ': (){
    
  },

  '@': (){ //Replace
    String a = pop();
    Pattern b = pop();
    String c = pop();
    push(a.replaceAll(b, c));
  },

  '#': (){
    
  },

  '&': (){
    
  },

  '~': (){
    
  },

  'Ś': (){ //Sort Ascending
    var a = pop();
    if(a is List){
      a.sort();
      push(a.reversed);
    }else if(a is int){
      List s = '$a'.split('');
      s.sort();
      push(fun.intParse(s.join('')));
    }else{
      List s = '$a'.split('');
      s.sort();
      push(s.join(''));
    }
  },

  'Ş': (){ //Sort Descending
    var a = pop();
    if(a is List){
      a.sort();
      push(a.reversed);
    }else if(a is int){
      List s = '$a'.split('');
      s.sort();
      push(fun.intParse(s.reversed.join('')));
    }else{
      List s = '$a'.split('');
      s.sort();
      push(s.reversed.join(''));
    }
  },

  '=' : (){ //Equals
    var a = pop();
    var b = pop();

    push(a == b);
  },

  '<': (){ //Sublist where a < b
    var a = pop();
    var b = pop();

    if(a is List) push(a.where((v)=>v<b).toList());
    if(a is num) push(a > b);
  },

  '>': (){ //Sublist where a > b
    var a = pop();
    var b = pop();
    if(a is List) push(a.where((v)=>v>b).toList());
    if(a is num) push(a > b);
  },
};
