//https://codegolf.stackexchange.com/questions/21831/program-that-creates-larger-versions-of-itself-quine-variant/

f()=>print('print(${f()}');

check(){
  f();
}