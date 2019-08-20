import 'dart:math';

add(a,b){
  if(a is List && b is List){
    int i=0;
    return a.map((c)=>c+b[i++]);

  }else if(a is List && b is num){
    return a.map((c)=>c+b);

  }else if(a is String && b is num){
    return String.fromCharCodes(a.runes.map((c)=>c+b));

  }else if(a is num && b is num){
    return a + b;
    
  }
}

sub(a,b){
  if(a is List && b is List){
    int i=0;
    return a.map((c)=>c-b[i++]);

  }else if(a is List && b is num){
    return a.map((c)=>c-b);

  }else if(a is String && b is num){
    return String.fromCharCodes(a.runes.map((c)=>c-b));

  }else if(a is num && b is num){
    return a - b;
    
  }
}

div(a,b){
  if(a is List && b is List){
    int i=0;
    return a.map((c)=>c/b[i++]);

  }else if(a is List && b is num){
    return a.map((c)=>c/b);

  }else if(a is String && b is num){
    return String.fromCharCodes(a.runes.map((c)=>(c/b).round()));

  }else if(a is num && b is num){
    return a / b;
    
  }
}

mult(a,b){
  if(a is List && b is List){
    int i=0;
    return a.map((c)=>c*b[i++]);

  }else if(a is List && b is num){
    return a.map((c)=>c*b);

  }else if(a is String && b is num){
    return String.fromCharCodes(a.runes.map((c)=>(c*b).round()));

  }else if(a is num && b is num){
    return a * b;
    
  }
}

mod(a,b){
  if(a is List && b is List){
    int i=0;
    return a.map((c)=>c%b[i++]);

  }else if(a is List && b is num){
    return a.map((c)=>c%b);

  }else if(a is String && b is num){
    return String.fromCharCodes(a.runes.map((c)=>(c%b).round()));

  }else if(a is num && b is num){
    return a % b;
    
  }
}

sum(List a){
  if(a is List<String>){
    return a.join('');
  }else if(a is List<num>){
    return a.fold(0, (p,e)=>p+e);
  }
}

join(List a,delimiter){
  if(delimiter == null){
    return a.join('');
  }else if(delimiter is num){
    List l = [];
    for(var i=0;i<a.length;i+=delimiter)l.add(a.sublist(i,i+delimiter).join(''));
    return l;
  }else if(delimiter is String){
    return a.join(delimiter);
  }
}

split(a,delimiter){
  if(a is String && delimiter is String){
    return a.split(delimiter);
  }else if(a is String && delimiter is num){
    var l = [];
    for(var i=0;i<a.length;i+=delimiter) l.add(a.substring(i,i+delimiter));
    return l;
  }
}

reverse(a){
  if(a is List){
    return a.reversed;
  }else if(a is num || a is String){
    return '$a'.split('').reversed.join('');
  }
}

sumDigits(var a){
  if(a is List){
    return a.map(sumDigits).toList();
  }else{
    return '$a'.split('').map((v)=>v.runes.first-48).fold(0,add);
  }
}

binary(int n){
  return radix(n,2);
}

hex(int n){
  return radix(n,16);
}

radix(int n, int r){
  return n.toRadixString(r);
}

equals(a,b){
  if(a is List && b is List){
    if(a.length == b.length){
      for(var i=0;i<a.length;i++){
        if(a[i] != b[i]) return false;
      }
      return true;
    }else{
      return false;
    }
  }else{
    return '$a' == '$b';
  }
}

shift(var a, int b){
  while(b < 0) b += a.length;
  List buf = [];
  if(a is List){
    for(int i=0;i<a.length;i++){
      buf[(i+b%a.length)] = a[i];
    }
    return buf;
  }else{
    return shift('$a'.split('').toList(),b);
  }
}

abs(var a){
  if(a is List){
    return a.map(abs).toList();
  }else if(a is num){
    return a.abs();
  }
}

ceil(var a){
  if(a is List){
    return a.map(ceil).toList();
  }else if(a is num){
    return a.ceil();
  }
}

floor(var a){
  if(a is List){
    return a.map(floor).toList();
  }else if(a is num){
    return a.floor();
  }
}

round(var a){
  if(a is List){
    return a.map(round).toList();
  }else if(a is num){
    return a.round();
  }
}

invert(var a){
  if(a is bool){
    return !a;
  }else if(a is num){
    return -a;
  }else if(a is List){
    return a.map(invert).toList();
  }else{
    return reverse(a);
  }
}

factorial(var a){
  if(a is List){
    return a.map(factorial).toList();
  }else{
    int n=1;
    for(int i=1;i<=a;i++){
      n*=i;
    }
    return n;
  }
}

randomInt(int min, int max){
  return new Random().nextInt(max - min) + min;
}

randomDouble(double min, double max){
  return new Random().nextDouble()*(max-min) + min;
}

randomString(int length, var characters){
  if(characters is List) characters = characters.join('');
  if(characters is String) characters = characters.split('');
  String res = '';
  for(int i=0;i<length;i++) res += characters[randomInt(0, characters.length)];
  return res;
}