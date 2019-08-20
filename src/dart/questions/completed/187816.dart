import'dart:io';
f(){print({'Good':'Bad','Bad':'Good'}[stdin.readLineSync()]);}
g({a='Good',b='Bad'}){print({a:b,b:a}[stdin.readLineSync()]);}
h(){print('BadGood'.replaceAll(stdin.readLineSync(),''));}