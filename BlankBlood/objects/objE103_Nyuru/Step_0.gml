if(collision_rectangle(x,y,x+hspd*2,y+30,objNormal,0,1)){
	with(objNormal){
		if(!inv) with(other){alarm[11] = 1};
	}
}

if(step>200){
	alarm[11] = 1;
}

hspeed += 0.1;
gravity = 0.1;
step += 1;
if(air){
	rot += 1;
}else{
	hspeed = 16;
}
