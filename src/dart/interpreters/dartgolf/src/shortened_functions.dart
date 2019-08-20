import 'functions.dart' as fun;

a(){

}

b(){

}

c(String s){ //Code Units
  return s.runes.toList();
}

d(){

}

e(){

}

//No f() to allow declaration for golfing purposes

g(){

}

h(){

}

i(n){ //int.parse
  return fun.intParse(n);
}

j(l, del){ //Join
  return fun.join(l, del);
}

k(){

}

l(v){ //Length
  return v.length;
}

m(){

}

n(){
  
}

o(){
  
}

p(){ //Primes
  
}

pr(v){ //Print
  print(v);
}

po(List l){ //Pop
  return l.removeLast();
}

pu(List l, a){ //Push
  l.add(a);
  return l;
}

q(){
  
}

r(l){ //Reverse
  return fun.reverse(l);
}

ra(n,r){ //Radix
  return fun.radix(n, r);
}

rb(n){ //Radix Hex
  return ra(n,2);
}

re(s, m){ //Replace
  return fun.replace(s, m);
}

rh(n){ //Radix Binary
  return ra(n,16);
}

s(val){ //Split
  return sp(val,'');
}

sp(val, delimiter){ //Split
  return fun.split(val, delimiter);
}

sd(val){ //Sum Digits
  return fun.sumDigits(val);
}

sn(val, del){ //Split Num
  return fun.splitNum(val, del);
}

su(n){ //Sum
  return fun.sumList(n);
}

t(){

}

u(){
  
}

v(){
  
}

w(){ //Where
  
}

x(){
  
}

y(){
  
}

z(){
  
}