import'dart:io';check(a){print(new File(a[0]).readAsBytesSync().map((n)=>n.toRadixString(16).toUpperCase().padLeft(2,'0')).join(' '));}
