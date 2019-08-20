f(a,b)=>"PSSP".contains(a+b)?a.compareTo(b):b.compareTo(a);
g(a,b,{p}){p=a+b==163?[b,a]:[a,b];return a.compareTo(b);}

main() {
	var v = [
		["R", "R"],
		["R", "P"],
		["R", "S"],
		["P", "R"],
		["P", "P"],
		["P", "S"],
		["S", "R"],
		["S", "P"],
		["S", "S"],
	];

	v.forEach((t){
		print(f(t[0], t[1]));
	});
}




