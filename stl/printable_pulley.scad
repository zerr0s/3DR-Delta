//variables (mm)
	idlerID = 13.1;
	idlerOD = 15.1;
	beltwidth= 1.5;
	$fn=30; //faceting

//these are the lips that hold the belt on
	lipheight = 3;
	lipthickness = 2;
	topangle = 60; //the angle the top lip overhang makes. You can increase this to lower the idler profile.


truc();
mirror([0,0,1]) truc();
module truc(){
//construction
	difference(){
	union(){
		//cylinder(r=lipheight+idlerOD/2, h=lipthickness);
		cylinder(r=idlerOD/2, h = lipthickness*2+beltwidth+lipheight*cos(topangle));
		translate([0,0,lipthickness*2+beltwidth+lipheight*cos(topangle)])cylinder(r=lipheight+idlerOD/2, h=lipthickness);
		translate([0,0,beltwidth+lipthickness*2])cylinder(r1=idlerOD/2, r2=lipheight+idlerOD/2, h=lipheight*cos(topangle));
		}
		translate([0,0,-1])cylinder(r=idlerID/2, h=lipthickness*2+beltwidth+lipheight*2);
}
}