
even_factor(List<num> l, int factor, {i=0}) => l.map((val)=>i++%2==0?val*factor:val).toList();
odd_factor(List<num> l, int factor, {i=0}) => l.map((val)=>i++%2>0?val*factor:val).toList();

join(List l, String del)=>l.join(del);

reverse(var l){
  if(l is List)   return l.reversed;
  if(l is String) return l.split('').reversed.join('');
  if(l is num)    return '$l'.split('').reversed.join('');
}

add(a,b)=>a+b;
sub(a,b)=>a-b;
div(a,b)=>a/b;
mod(a,b)=>a%b;
mult(a,b)=>a*b;
concat(a,b)=>'$a'+'$b';
codePoints(s)=>s.runes;
where(List l, var m)=>l.where((val)=>val==m);
split(var v, String del)=>'$v'.split(del);

sum(var a, var b){
  if(a is List) a = sumList(a);
  if(b is List) b = sumList(b);

  return a+b;
}

sumList(List l, {s=0}){
  l = intParse(l);
  l.forEach((v)=>s+=v);
  return s;
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

pop(List l){
  var a = l.first;
  l.removeAt(0);
  return a;
}

push(List l, var a){
  l.add(a);
  return l;
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

duplicate(var a){
  if(a is List){
    a.addAll(a);
    return a;
  }else{
    return '$a$a';
  }
}

sumDigits(var n){
  if(n is List){
    return n.map(sumDigits).toList();
  }else{
    return '$n'.split('').map((v)=>v.runes.first-48).fold(0,add);
  }
  
}

splitNum(var v, int del, {i=0}){
  List result = [];
  while(i<'$v'.length){
    if(i+del < '$v'.length)result.add('$v'.substring(i,i+del));
    else result.add('$v'.substring(i));
    i += del;
  }
  return result;
}

intParse(var v){
  if(v is String)return int.parse(v);
  if(v is List)return v.map((a)=>int.parse('$a')).toList();
  if(v is int) return v;
}

primes(int n){

}

List<int> even(int n){
  return List<int>.generate(n, (m)=>m*2);
}

List<int> odd(int n){
  return List<int>.generate(n, (m)=>m*2+1);
}

List<int> evenUnder(int n){
  return even(n~/2).where((m)=>m<n).toList();
}

List<int> oddUnder(int n){
  return odd(n~/2).where((m)=>m<n).toList();
}

occurences(var list, String delimiter, var lookup){
  Map<String,int> result = {};

  if(list is String || list is num){
    list = '$list'.split(delimiter);
  }

  list.forEach((v){
    if(result.containsKey(v)){
      result[v]+=1;
    }else{
      result[v]=1;
    }
  });

  if(lookup == null){
    return result;
  }else{
    return result['$lookup'];
  }
}

replace(String s, Map<Pattern, String> patterns){
  patterns.forEach((p, s){
    s.replaceAll(p, s);
  });

  return s;
}

rangeExclusive(a, b){
  var mi = a<b?a:b;
  var ma = a>b?a:b;

  return List.generate(ma - mi, (i)=>i+mi);
}

rangeInclusive(a, b){
  List l = rangeExclusive(a,b);
  var mi = a<b?a:b;
  var ma = a>b?a:b;

  l.add(ma);
  l.insert(0, mi);

  return l;
}