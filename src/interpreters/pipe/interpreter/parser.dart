import 'dart:io';
import 'interpreter.dart';

class ProgramData{
  int w = 0;
  int h = 0;
  int get area => data.length;
  String data = '';
  String getDataXY(int x, int y) => getData(y*w+x);
  String getData(int a) => data[a];
  int getPosition(String s)=>data.indexOf(s);
}

class Parser {
  static String pipes = '╠╣║═╔╗╚╝╦╩╬';
  static String operators = '◐◑◒◓';
  static String endCell = '▭';

  static ProgramData readFile(String file){
    List<String> content = File(file).readAsLinesSync();
    return readText(content);
  }

  static ProgramData readText(List<String> program){
    ProgramData data = ProgramData();

    List<String> lines = [];

    program.forEach((line){
      lines.add(line);
      if(line.length > data.w) data.w = line.length;
    });

    data.h = lines.length;

    lines.forEach((line){
      data.data += line.padRight(data.w,' ');
    });
    return data;
  }

  Node parse(ProgramData data){
    int end = data.getPosition(endCell);
  }
}