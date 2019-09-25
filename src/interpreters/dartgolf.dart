import 'dartgolf/src/golf_functions.dart' as G;


List parse(String code){

}

List<dynamic> buildInitialStack(List<String> values){
  List<dynamic> stack = List();
  int i=0;
  values.forEach((String s){
    if(int.tryParse(s) != null){
      stack.add(int.parse(s));
    }else if(double.tryParse(s) != null){
      stack.add(double.parse(s));
    }else{
      stack.add(s);
    }
    i++;
  });

  return stack;
}

exec(String program, List<dynamic> input){
  String code = program.split('|')[0];
  List<dynamic> stack = buildInitialStack(program.split('|')[1].split(';'));
  execCode(code, input, stack);
}

execCode(String code, List<dynamic> input, List<dynamic> stack){
  G.initStack(stack, input);
  code.split('').forEach((s){
    G.instructions[s]();
    //print('$s : ${G.stack}');
  });

  G.stack.forEach(print);
}