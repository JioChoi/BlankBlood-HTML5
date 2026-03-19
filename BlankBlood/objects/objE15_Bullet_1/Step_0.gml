if(collision_rectangle(x,y,x+hspd*2,y+30,objNormal,0,1)){
	with(objNormal){
		if(!inv) with(other){alarm[11] = 1};
	}
}

if(step>80){
	alarm[11] = 1;
}

gravity = 0.98;
step += 1;
if(air){
	hspeed = hspd;
	image_angle = direction;
	hspeed = 0;
}else{
	image_speed = 0;
}
