String zult = """Polar Bear, Polar Bear, what do you hear?
I hear a lion roaring in my ear.

Lion, Lion, what do you hear?
I hear a hippopotamus snorting in my ear.

Hippopotamus, Hippopotamus, what do you hear?
I hear a flamingo fluting in my ear.

Flamingo, Flamingo, what do you hear?
I hear a zebra braying in my ear.

Zebra, Zebra, what do you hear?
I hear a boa constrictor hissing in my ear.

Boa Constrictor, Boa Constrictor, what do you hear?
I hear an elephant trumpeting in my ear.

Elephant, Elephant, what do you hear?
I hear a leopard snarling in my ear.

Leopard, Leopard, what do you hear?
I hear a peacock yelping in my ear.

Peacock, Peacock, what do you hear?
I hear a walrus bellowing in my ear.

Walrus, Walrus, what do you hear?
I hear a zookeeper whistling in my ear.

Zookeeper, Zookeeper, what do you hear?
I hear children...

...growling like a polar bear,
roaring like a lion,
snorting like a hippopotamus,
fluting like a flamingo,
braying like a zebra,
hissing like a boa constrictor,
trumpeting like an elephant,
snarling like a leopard,
yelping like a peacock,
bellowing like a walrus...
that's what I hear.""";

f(){var b="Polar Bear,Lion,Hippopotamus,Flamingo,Zebra,Boa Constrictor,Elephant,Leopard,Peacock,Walrus,Zookeeper".split(","),c="growl,roar,snort,flut,bray,hiss,trumpet,snarl,yelp,bellow,whistl".split(","),d=" hear",i=0,z="";for(;i<11;z+="${b[i]}, ${b[i]}, what do you$d?\nI$d "+(i<10?'a ${b[i+1].toLowerCase()} ${c[++i]}ing in my ear':'children..')+".\n\n");z+="...";for(i=0;i<10;z+="${c[i]}ing like a${i==6?'n':''} ${b[i++].toLowerCase()},\n");z=z.replaceRange(z.length-2, z.length-1, "...\nthat's what I$d.");return z;}
g(){var b="Polar Bear,Lion,Hippopotamus,Flamingo,Zebra,Boa Constrictor,Elephant,Leopard,Peacock,Walrus,Zookeeper".split(","),c="growl,roar,snort,flut,bray,hiss,trumpet,snarl,yelp,bellow,whistl".split(","),d=" hear",i=0,z="";b.forEach((s)=>z+="$s, $s, what do you$d?\nI$d "+(i<10?"a ${b[i+1].toLowerCase()} ${c[++i]}ing in my ear":"children..")+".\n\n");z+="...";for(i=0;i<10;z+="${c[i]}ing like a${i==6?'n':''} ${b[i++].toLowerCase()},\n");z=z.replaceRange(z.length-2, z.length-1, "...\nthat's what I$d.");return z;}


check(){
  print(g());
  print(g() == zult);
}