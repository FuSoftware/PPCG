/*
The major scale (or Ionian scale) is one of the most commonly used musical scales, especially in Western music. It is one of the diatonic scales. Like many musical scales, it is made up of seven notes: the eighth duplicates the first at double its frequency so that it is called a higher octave of the same note.

The seven musical notes are:

C, D, E, F, G, A, B, C (repeated for example purposes)

A major scale is a diatonic scale. Take the previous succession of notes as a major scale (Actually, It is the scale C Major). The sequence of intervals between the notes of a major scale is:

whole, whole, half, whole, whole, whole, half

where "whole" stands for a whole tone (a red u-shaped curve in the figure), and "half" stands for a semitone (a red broken line in the figure).

enter image description here

In this case, from C to D exist a whole tone, from D to E exist a whole tone, from E to F exist half tone, etc...

We have 2 components that affects the tone distance between notes. These are the Sharp symbol (♯) and the flat symbol (♭).

The Sharp symbol (♯) adds half tone to the note. Example. From C to D we mentioned that exists a whole tone, if we use C♯ instead C then from C♯ to D exists half tone.

The Flat symbol (♭) do the opposite of the Sharp symbol, it subtract half tone from the note. Example: From D to E we mentioned that exists a whole tone, if we use Db instead D then from Db to E exists a tone and a half.

By default, from Note to Note exist a whole tone except for E to F and B to C in where just half tone exists.

Note in some cases using enharmonic pitches can create an equivalent to a Major Scale. An example of this is C#, D#, E#, F#, G#, A#, B#, C# where E# and B# are enharmonic but the scale follows the sequence of a Major Scale.

Challenge
Given a scale, output a truthy value if it is a Major Scale or equivalent, otherwise output a falsey value.

Rules

Standard I/O method allowed
Standard code-golf rules apply
You don't need to take in consideration the 8th note. Assume the input will only consist of 7 notes
Assume double flat (♭♭), double sharp (♯♯) or natural sign (♮) don't exist
Test cases
C, D, E, F, G, A, B                 => true
C#, D#, E#, F#, G#, A#, B#          => true
Db, Eb, F, Gb, Ab, Bb, C            => true
D, E, Gb, G, A, Cb, C#              => true
Eb, E#, G, G#, Bb, B#, D            => true
-----------------------------------------------
C, D#, E, F, G, A, B                => false
Db, Eb, F, Gb, Ab, B, C             => false
G#, E, F, A, B, D#, C               => false 
C#, C#, E#, F#, G#, A#, B#          => false
Eb, E#, Gb, G#, Bb, B#, D           => false
*/

/*
f(l){
  var i=1,k=0,j='',y=[0,0],n={'C':0,'D':2,'E':4,'F':5,'G':7,'A':9,'B':11,'b':-1,'#':1};
  for(;i<7;i++){
    for(k=0;k<2;k++)y[k]=n[l[i-k][0]]+(l[i-k].length>1?n[l[i-k][1]]:0);
    j+='${(y[0]-y[1])%12}';
  }
  return j=='221222';
}
*/

//f(l){var i=0,k=0,n={'C':0,'D':2,'E':4,'F':5,'G':7,'A':9,'B':11,'b':-1,'#':1},j='',y=[0,0];for(;++i<7;){for(k=0;k<2;k++)y[k]=n[l[i-k][0]]+(l[i-k].length>1?n[l[i-k][1]]:0);j+='${(y[0]-y[1])%12}';};return j=='221222';}

f(l){var i=0,k=0,n={'C':0,'D':2,'E':4,'F':5,'G':7,'A':9,'B':11,'b':-1,'#':1},j='',y=[0,0];for(;++i<7;j+='${(y[0]-y[1])%12}')for(k=0;k<2;k++)y[k]=n[l[i-k][0]]+(l[i-k].length>1?n[l[i-k][1]]:0);return'221222'==j;}
h(l){var i=0,j='',k,n=l.map((m){k=m.runes.first*2-130;k-=(k>3?1+(k>9?1:0):0);k+=(m.endsWith('#')?1:m.endsWith('b')?-1:0);return k;}).toList();for(;++i<7;j+='${(n[i]-n[i-1])%12}');return'221222'==j;}
g(l){var i=0,j='',k,n=l.map((m){k=m.runes.first*2-130;if(k>9)k--;if(k>3)k--;k+=m.length<2?0:m[1]=='#'?1:m[1]=='b'?-1:0;return k;}).toList();for(;++i<7;j+='${(n[i]-n[i-1])%12}');return'221222'==j;}


check(){
  //True
  print('True :');
  print(g(['C','D','E','F','G','A','B']));
  print(g(['C#','D#','E#','F#','G#','A#','B#']));
  print(g(['Db','Eb','F','Gb','Ab','Bb','C']));
  print(g(['D', 'E', 'Gb', 'G', 'A', 'Cb', 'C#']));
  print(g(['Eb', 'E#', 'G', 'G#', 'Bb', 'B#', 'D']));
  
  //False
  print('False :');
  print(g(['C', 'D#', 'E', 'F', 'G', 'A', 'B' ]));
  print(g(['Db', 'Eb', 'F', 'Gb', 'Ab', 'B', 'C']));
  print(g(['G#', 'E', 'F', 'A', 'B', 'D#', 'C']));
  print(g(['C#', 'C#', 'E#', 'F#', 'G#', 'A#', 'B#']));
  print(g(['Eb', 'E#', 'Gb', 'G#', 'Bb', 'B#', 'D']));
  
  
}