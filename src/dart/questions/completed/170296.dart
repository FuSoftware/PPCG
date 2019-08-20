import'dart:convert';
f(s)=>json.encode(Map.fromIterable(s.split('\n').where((i)=>i!=''),key:(i)=>i.split("=")[0],value:(i)=>i.split("=")[1]));
h(s)=>json.encode(Map.fromIterable(s.split('\n').where((i)=>i!='').map((j)=>j.split('=')),key:(i)=>i[0],value:(i)=>i[1]));
g(s)=>"""{${s.replaceAll('"', '\\"').replaceAllMapped(new RegExp(r'(.*)=(.*)'), (m)=>'"${m[1]}":"${m[2]}",')}}""";
k(s)=>"""{${s.replaceAll('"', '\\"').replaceAllMapped(RegExp(r'(.*)=(.*)'),(m)=>'"${m[1]}":"${m[2]}",')}}""";

var t = [["""
tile.dirt.name=Dirt
advMode.nearestPlayer=Use "@p" to target nearest player

build.tooHigh=Height limit for building is %s blocks
""","""
Output:

{
    "tile.dirt.name": "Dirt",
    "advMode.nearestPlayer": "Use \"@p\" to target nearest player",
    "build.tooHigh": "Height limit for building is %s blocks"
}
"""
],[
"""
translation.test.none=Hello, world!
translation.test.complex=Prefix, %s%2\$s again %s and %1\$s lastly %s and also %1\$s again!
translation.test.escape=%%s %%%s %%%%s %%%%%s
translation.test.invalid=hi %
translation.test.invalid2=hi %  s
translation.test.args=%s %s
translation.test.world=world
""","""

{
  "translation.test.none": "Hello, world!",
  "translation.test.complex": "Prefix, %s%2\$s again %s and %1\$s lastly %s and also %1\$s again!",
  "translation.test.escape": "%%s %%%s %%%%s %%%%%s",
  "translation.test.invalid": "hi %",
  "translation.test.invalid2": "hi %  s",
  "translation.test.args": "%s %s",
  "translation.test.world": "world",
}
"""
],[
"""
stat.mineBlock=%1\$s Mined
stat.craftItem=%1\$s Crafted
stat.useItem=%1\$s Used
stat.breakItem=%1\$s Depleted
""","""
Output:

{
    "stat.mineBlock": "%1\$s Mined",
    "stat.craftItem": "%1\$s Crafted",
    "stat.useItem": "%1\$s Used",
    "stat.breakItem": "%1\$s Depleted"
}
"""]];

check(){
  //print(f(t[0][0]));
  /*t.forEach((d){
    print(f(d[0]) == t[1]);
  });
  */
  
  t.forEach((d){
    print(g(d[0]));
  });
}