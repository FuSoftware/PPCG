/* Score rock-paper-scissors */

pub fn test(){
    println!("{}", q('R', 'R'));
    println!("{}", q('R', 'P'));
    println!("{}", q('R', 'S'));
    println!("{}", q('P', 'R'));
    println!("{}", q('P', 'P'));
    println!("{}", q('P', 'S'));
    println!("{}", q('S', 'R'));
    println!("{}", q('S', 'P'));
    println!("{}", q('S', 'S'));
}

fn q(a:char, b:char)->i8{
    b as i8 - a as i8
}
