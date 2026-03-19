if(!flag){
	flag = collision_rectangle(x,y+230,x+32,y+230+224,objNormal,0,1);
}else{
	air_check();
	if(air){
		gravity = global.g*5;
		gravity_direction = 270;
	}else{
		gravity = 0;
		gravity_direction = 0;
	}
}
