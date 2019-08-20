/* Score rock-paper-scissors */

pub fn test(){
    println!("{}", r("Rock", "Rock"));
    println!("{}", r("Rock", "Paper"));
    println!("{}", r("Rock", "Scissors"));
    println!("{}", r("Paper", "Rock"));
    println!("{}", r("Paper", "Paper"));
    println!("{}", r("Paper", "Scissors"));
    println!("{}", r("Scissors", "Rock"));
    println!("{}", r("Scissors", "Paper"));
    println!("{}", r("Scissors", "Scissors"));
}

fn r(a:&str,b:&str)->i8{let p;if a.as_bytes()[0]+b.as_bytes()[0]==163{p=(b,a)}else{p=(a,b)}p.1.cmp(&p.0)as i8}
fn q(a:&str,b:&str)->i8{let p=if a.as_bytes()[0]+b.as_bytes()[0]==163{(b,a)}else{(a,b)};p.1.cmp(&p.0)as i8}
