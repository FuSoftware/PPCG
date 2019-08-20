/*
Finding acronym) hi igloo -> hi
(Finding acronym) ppcg paints -> (impossible)
(Finding acronym) ppcg paints cool giraffes -> ppcg
(Finding acronym) I -> I
(Finding sentence) ppcg paints -> ppcg paints cool galaxies paints air in not the sea
(Finding sentence) hi -> hi invert
(Finding sentence) I -> I
*/

f(String s){
  return s.split('').map((t)=>t[0]).join();
}

check(){
  var t = [
    f('hi igloo'),
    f('ppcg paints'),
    f('ppcg paints cool giraffes'),
    f('ppcg paints cool galaxies pouring acid into night time stars'),
    f('ppcg paints cool galaxies pouring acid into night time'),
    f('ppcg questions professional pool challengers greatly'),
    f('I')
  ];
  print(t);
}