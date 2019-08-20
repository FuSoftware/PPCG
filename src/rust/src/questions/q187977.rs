/* Reverse Cat Program */

pub fn test() {
    println!("{}", q("123456789"));
    println!("{}", q("éléphant"));
}

fn q(s:&str)->String{s.chars().rev().collect::<String>()}
