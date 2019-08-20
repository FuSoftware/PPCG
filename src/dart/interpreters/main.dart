import 'dartgolf.dart' as G;
import 'dartgolf/questions/22.dart' as Q;

main(){
  
  Q.args.forEach((s){
    G.exec(Q.code, [s[0]]);
    print('  -> ${s[1]}');
  });
  
  /*
  G.exec(Q.code, [Q.args[0][0]]);
  print('  -> ${Q.args[0][1]}');
  */
  
}