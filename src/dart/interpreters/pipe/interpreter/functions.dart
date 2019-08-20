Map<String, Function> NodeFunctions = {
  'add': (List<dynamic> args){
    if(args.isEmpty) return null;
    if(args[0] is num){
      num res = 0;
      args.forEach((s){
        if(s is num)res += s;
        if(s is String) res += s.split('').fold(0,(p,e)=>p+e.runes.first);
      });
      return res;
    }else if(args[0] is String){
      String res = '';
      args.forEach((s){res += '$s';});
      return res;
    }else if(args[0] is List){
      return null;
    }else{
      return null;
    }
  }
};