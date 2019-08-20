import 'interpreter.dart';
import 'parser.dart';
class Tests{
  static void testSimple(){
    Node iH = Node(value: 'H');
    Node ie = Node(value: 'e');
    Node il = Node(value: 'l');
    Node io = Node(value: 'o');
    Node icomma = Node(value: ',');
    Node ispace = Node(value: ' ');
    Node iW = Node(value: 'W');
    Node ir = Node(value: 'r');
    Node id = Node(value: 'd');
    Node iexc = Node(value: '!');

    Function f = (List args)=>args.fold('', (p,e)=>'$p$e');

    Node f1 = Node(function: f, inputs: [iH, ie, il]);
    Node f2 = Node(function: f, inputs: [f1, il, io]);
    Node f3 = Node(function: f, inputs: [f2, icomma, ispace]);
    Node f4 = Node(function: f, inputs: [ir, il, id]);
    Node f5 = Node(function: f, inputs: [iW, io, f4]);
    Node f6 = Node(function: f, inputs: [f3, f5, iexc]);
    print(f6.compute());
  }

  static void testParser(String file){
    print(Parser.readFile(file).data);
  }
}