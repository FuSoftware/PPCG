class Interpreter{
  Interpreter(){

  }
}

class Program{
  Node start = null;
}

class Node{
  dynamic value = null;
  List<Node> inputs = [];
  Function function = null;

  Node({this.value=null, this.function = null, this.inputs=null}){
    if(this.inputs == null) this.inputs = [];
  }

  List<dynamic> computeInputs(){
    List<dynamic> args = [];

    inputs.forEach((i){
      args.add(i.compute());
    });

    return args;
  }

  dynamic compute(){
    if(value == null){
      return function(computeInputs());
    }else{
      return value;
    }
  }
}