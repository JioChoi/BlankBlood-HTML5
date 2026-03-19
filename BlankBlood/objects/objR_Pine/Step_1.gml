{
	air_check();
	rot += hspeed*hspeed;
	if(air){
		gravity = global.g;
		gravity_direction = 270;
	}else{
		gravity = 0;
		gravity_direction = 0;
	}
	visible = true;
	if(collision_line(x,y,xprevious,yprevious,objEnemy,0,1)) alarm[0] = 1;
}
