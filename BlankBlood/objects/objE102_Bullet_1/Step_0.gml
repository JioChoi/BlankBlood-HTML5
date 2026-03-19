if(mode){
	if(collision_rectangle(x,y,x+hspd*2,y+30,objE102_Blast,0,1)) alarm[11] = 1;
	if(collision_rectangle(x,y,x+hspd*2,y+30,objNormal,0,1)){
		with(objNormal){
			if(!inv) with(other){alarm[11] = 1};
		}
	}
	with(objNormal){
		other.dire = point_direction(other.x,other.y,x,y);
	}
	instance_create(xprevious,yprevious,objSmoke);
	//if(rot>0.3) rot -= 0.01;
	motion_add(dire,rot)	//0.6
	if(speed>15) speed = 15;
}

if(step>200){
	alarm[11] = 1;
}



step += 1;

