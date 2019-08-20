class Interpreter {
  Map<String,dynamic> registers = {
    'I' : [],
    'F' : null,
    'L' : null,
    'P' : []
  };

  dynamic getReg(String reg){
    return registers[reg];
  }

  void setReg(String reg, var value){
    registers[reg] = value;
  }

  void push(String reg, var value){
    registers[reg].add(value);
  }

  dynamic pop(String reg){
    return registers[reg].removeLast;
  }

  CommandList commands;
}

class CommandList{
  Interpreter parent;

  CommandList(this.parent){
  
  }
}